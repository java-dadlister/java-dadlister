package dao.users;

import com.mysql.cj.jdbc.Driver;
import dao.Config;
import models.User;
import org.mindrot.jbcrypt.BCrypt;

import javax.xml.transform.Result;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public abstract class MySQLUsersDao implements Users {

    private Connection connection;

    public MySQLUsersDao(Config config) {

        try {
            DriverManager.registerDriver(new Driver());
            this.connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public List<User> all() {
        String query = "SELECT * FROM users";

        try {
            Statement stmt = connection.createStatement();
            ResultSet usersRs = stmt.executeQuery(query);
            List<User> users = new ArrayList<>();

            while (usersRs.next()) {

                int id = usersRs.getInt("id");
                String first_name = usersRs.getString("first_name");
                String last_name = usersRs.getString("last_name");
                String email = usersRs.getString("email");
                String username = usersRs.getString("username");
                String password = usersRs.getString("password");
                String favorite_joke = usersRs.getString("favorite_joke");
                String bio = usersRs.getString("bio");
                String img_url = usersRs.getString("img_url");

                User user = new User(id, first_name, last_name, email, username, password, favorite_joke, bio, img_url);

                users.add(user);
            }
            return users;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error getting all users");
        }
    }

    @Override
    public User findByUsername(String username){
        String ronJones = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try{
            PreparedStatement stmt = connection.prepareStatement(ronJones);
            stmt.setString(1,username);
            return extractUser(stmt.executeQuery());
        }catch (SQLException e){
            throw new RuntimeException("You suck in spanish", e);
        }
    }

    private User extractUser(ResultSet robSchnider) throws SQLException {
        if(! robSchnider.next()){
            return null;
        }
        return new User(
                robSchnider.getString("first_name"),
                robSchnider.getString("last_name"),
                robSchnider.getString("email"),
                robSchnider.getString("username"),
                robSchnider.getString("password"),
                robSchnider.getString("favorite_joke"),
                robSchnider.getString("bio")
        );
    }

    @Override
    public User find(String column, String value) {

        //attempt to validate proper column values and keep them variable
//        String columnValue;
        if (column.equals("first_name") || column.equals("last_name") || column.equals("username") || column.equals("id") || column.equals("email")) {
//            columnValue = column;
        } else {
            throw new RuntimeException("Invalid column name!");
        }

        String query = "SELECT * FROM users WHERE " + column + " = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, value);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                int id = rs.getInt("id");
                String first_name = rs.getString("first_name");
                String last_name = rs.getString("last_name");
                String email = rs.getString("email");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String favorite_joke = rs.getString("favorite_joke");
                String bio = rs.getString("bio");
                String img_url = rs.getString("img_url");

                return new User(id, first_name, last_name, email, username, password, favorite_joke, bio, img_url);

            } else {
                return null;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error finding user");
        }
    }

    @Override
    public boolean delete(long id) {

        String query = "DELETE FROM users WHERE id = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setLong(1, id);
            return ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Problem");
            throw new RuntimeException("Error deleting user");
        }

    }

    @Override
    public void save(User user) {
        if (user.getId() == 0) {
            insert(user);
        } else {
            update(user);
        }
    }

    public Long insert(User user) {
        String query = "INSERT INTO users (first_name, last_name, email, username, password, favorite_joke, bio) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
//            System.out.println(user.getUsername());
            stmt.setString(1, user.getFirst_name());
            stmt.setString(2, user.getLast_name());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getUsername());
            stmt.setString(5, user.getPassword());
            stmt.setString(6, user.getFavorite_joke());
            stmt.setString(7, user.getBio());

            stmt.executeUpdate();

            ResultSet rs = stmt.getGeneratedKeys();

            rs.next();

            return rs.getLong(1);

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error creating new user", e);
        }
    }

    public boolean update(User user) {
        String query = "UPDATE users SET first_name = ?, last_name = ?, email = ?, username = ?, password = ?, favorite_joke = ?, bio = ?, img_url = ?, id = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(query);

            ps.setString(1, user.getFirst_name());
            ps.setString(2, user.getLast_name());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getUsername());
            ps.setString(5, user.getPassword());
            ps.setString(6, user.getFavorite_joke());
            ps.setString(7, user.getBio());
            ps.setString(8, user.getImg_url());
            ps.setLong(9, user.getId());

            return ps.execute();

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error updating User");
        }

//        @Override
//        public long verifyEmailPass (String email, String pass){
//
//            User user = find("email", email);
//
//            if (user == null) {
//                return 0;
//            } else {
//                if (BCrypt.checkpw(pass, user.getPassword())) {
//                    return user.getId();
//                } else {
//                    return 0;
//                }
//            }
//        }
    }
}









