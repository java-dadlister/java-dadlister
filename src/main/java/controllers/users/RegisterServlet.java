package controllers.users;

import dao.DaoFactory;
import dao.users.Users;
import models.User;
import util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String firstname = request.getParameter("first_name");
        String lastname = request.getParameter("last_name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String hashedPassword = Password.hash(password);
        String favorite_joke = request.getParameter("favorite_joke");
        String bio = request.getParameter("bio");
        String img_url = request.getParameter("img_url");

        Users usersDao = DaoFactory.getUsersDao();

        System.out.println(hashedPassword);

        //check if the user email already matches an existing email
        // if the account exists, redirect to login page
        if (usersDao.find("email", email) != null) {
            response.sendRedirect("/login");
            // otherwise, create the user and redirect to their profile page
        } else {
            User user = new User(firstname, lastname, email, username, hashedPassword, favorite_joke, bio, img_url);
            usersDao.save(user);
            response.sendRedirect("/login");
        }
    }
            protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                request.getRequestDispatcher("/WEB-INF/user/register.jsp").forward(request, response);
            }
        }
