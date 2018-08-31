package dao.users;

import models.User;

import java.util.List;

public interface Users {
//    User findByUsername(String username);
//    Long insert(User user);
    List<User> all();
    User find(String column, String value);
    boolean delete(long id);
    void save(User user);
    User findByUsername(String username);

    List<User> getUsersByUser(long id);

    long verifyEmailPass(String email, String password);
}
