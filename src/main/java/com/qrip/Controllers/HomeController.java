package com.qrip.Controllers;

import com.qrip.data.Person;
import com.qrip.Repositories.PersonRepoSQL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ddcdanter on 2/27/15.
 */
public class HomeController extends HttpServlet{

    private PersonRepoSQL personRepoSQL;

    public HomeController() {
        this.personRepoSQL = PersonRepoSQL.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Person person;
        int id = -1;

        if (req.getParameter("id") != null) {
            id = Integer.parseInt(req.getParameter("id"));
            if (id == -1) {
                resp.sendError(500, "ERROR: could not find anyone by that id");
            }
        }
        person = personRepoSQL.findPersonById(id);

        req.setAttribute("person", person);
        getServletContext().getRequestDispatcher("/people/home.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

    }
}
