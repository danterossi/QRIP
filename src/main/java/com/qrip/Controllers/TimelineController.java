package com.qrip.Controllers;

import com.qrip.data.LifeEvent;
import com.qrip.data.Person;
import com.qrip.Repositories.PersonRepoSQL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Created by ddcdanter on 2/1/15.
 */
public class TimelineController extends HttpServlet {

    private PersonRepoSQL personRepoSQL;

    public TimelineController() {
        this.personRepoSQL = PersonRepoSQL.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Person person;
        List<LifeEvent> events;
        int id = -1;

        if (req.getParameter("id") != null) {
            id = Integer.parseInt(req.getParameter("id"));
            if (id == -1) {
                resp.sendError(500, "Error Loading Maintenance Event");
            }
        }

        person = personRepoSQL.findPersonById(id);
        events = personRepoSQL.findEventsByPerson(id);

        class CustomComparator implements Comparator<LifeEvent> {
            @Override
            public int compare(LifeEvent le1, LifeEvent le2) {
                return le1.getYear().compareTo(le2.getYear());
            }
        }
        Collections.sort(events,new CustomComparator());

        req.setAttribute("person", person);
        req.setAttribute("events", events);
        getServletContext().getRequestDispatcher("/people/timeline.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String comment;

        if (req.getParameter("comment") != null) {
            comment = req.getParameter("email");
            System.out.println(comment);
        }
        getServletContext().getRequestDispatcher("/people/timeline.jsp").forward(req,resp);
    }
}
