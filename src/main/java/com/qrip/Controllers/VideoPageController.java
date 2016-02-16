package com.qrip.Controllers;

import com.qrip.data.Person;
import com.qrip.Repositories.PersonRepoSQL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ddcdanter on 2/1/15.
 */
public class VideoPageController extends HttpServlet {

    private PersonRepoSQL personRepoSQL;

    public VideoPageController() {
        this.personRepoSQL = PersonRepoSQL.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Person person;
        int id = -1;

        if (req.getParameter("id") != null) {
            id = Integer.parseInt(req.getParameter("id"));
            if (id == -1) {
                resp.sendError(500, "Error Loading Maintenance Event");
            }
        }

        person = personRepoSQL.findPersonById(id);

        req.setAttribute("person", person);
        getServletContext().getRequestDispatcher("/people/video.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/people/video.jsp").forward(req,resp);
    }
}
