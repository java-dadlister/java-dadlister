package controllers.users;

import dao.DaoFactory;
import dao.users.Users;
import models.User;
import services.Auth;
import util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "controllers.users.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/user/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("hello");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = DaoFactory.getUsersDao().findByUsername(username);

        boolean validAttempt = user.getUsername().equals(username) && Password.check(password, user.getPassword());

        try {
            String nameCheck = DaoFactory.getUsersDao().findByUsername(username).getUsername();
            if (nameCheck != null) {
                String message = "That Username is not available. Please select another.";
                request.setAttribute("message",message);
                request.getRequestDispatcher("/WEB-INF/user/profile.jsp").forward(request,response);
                return;
            }

        } catch (NullPointerException w) {
    }

    }
}




