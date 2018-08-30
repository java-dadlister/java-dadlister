package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String favorite_joke = request.getParameter("favorite_joke");
        String bio = request.getParameter("bio");

        if(DaoFactory.getUsersDao().findByUsername(username) == null){
            User user = new User(firstname, lastname, email, password, favorite_joke, bio);
            DaoFactory.getUsersDao().insert(user);
            try {
                response.sendRedirect(" /profile");
            } catch (IOException e) {
                e.printStackTrace();
            }

        }else {
            try {
                response.sendRedirect("/register");
            } catch (IOException e) {
                e.printStackTrace();
            }

            // create and save a new user
            User user = new User(firstname, lastname, email, password, favorite_joke, bio );
            DaoFactory.getUsersDao().insert(user);
            response.sendRedirect("/login");
        }
    }
}
