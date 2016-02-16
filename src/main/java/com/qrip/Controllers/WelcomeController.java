package com.qrip.Controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ddcdanter on 3/8/15.
 */
public class WelcomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/people/welcome.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String email;
        String password;

        if (req.getParameter("email") != null) {
            email = req.getParameter("email");
            System.out.println(email);
        }
        if (req.getParameter("password") != null) {
            password = req.getParameter("password");
            System.out.println(password);
        }

        getServletContext().getRequestDispatcher("/people/welcome.jsp").forward(req,resp);
    }

}
