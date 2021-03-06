package controllers.users;

import dao.DaoFactory;

import dao.users.Users;

import models.User;
import services.Auth;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "UsersShowServlet", urlPatterns = "/users/show")
public class UsersShowServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Auth auth = new Auth(request);
        if (!auth.shouldRedirect()) {
            response.sendRedirect("/login");
            return;
        }

        Users usersDao = DaoFactory.getUsersDao();


        String id = request.getParameter("id");

        User user = usersDao.find("id", id);

        List<User> users = usersDao.getUsersByUser(Long.parseLong(id));

        request.setAttribute("user", user);
        request.setAttribute("users", users);

        if (auth.getLoggedUser().getId() == Long.parseLong(id)) {
            System.out.println("Ran");
            response.sendRedirect("/users/profile");
        } else {
            request.getRequestDispatcher("/WEB-INF/user/show.jsp").forward(request, response);
        }

    }
}