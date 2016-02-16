package com.qrip.Controllers;

import com.qrip.data.GuestBookComment;
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
public class GuestBookController extends HttpServlet {

    private PersonRepoSQL personRepoSQL;

    public GuestBookController() {
        this.personRepoSQL = PersonRepoSQL.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Person person;
        List<GuestBookComment> comments;
        int id = -1;

        if (req.getParameter("id") != null) {
            id = Integer.parseInt(req.getParameter("id"));
            if (id == -1) {
                resp.sendError(500, "Error Loading Maintenance Event");
            }
        }

        person = personRepoSQL.findPersonById(id);
        comments = personRepoSQL.findCommentsByPerson(id);

        class CustomComparator implements Comparator<GuestBookComment> {
            @Override
            public int compare(GuestBookComment c1, GuestBookComment c2) {
                return c1.getYear().compareTo(c2.getYear());
            }
        }
        Collections.sort(comments,new CustomComparator());

        req.setAttribute("person", person);
        if (comments.size() > 0) {
            req.setAttribute("comments", comments);
        }
        getServletContext().getRequestDispatcher("/people/guestbook.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String author;
        String comment;
        GuestBookComment guestBookComment = new GuestBookComment();
        Person person;
        List<GuestBookComment> comments;
        int id = -1;

        if (req.getParameter("id") != null) {
            id = Integer.parseInt(req.getParameter("id"));
            if (id == -1) {
                resp.sendError(500, "Error Loading Maintenance Event");
            }
        }

        if (req.getParameter("comment") != null && !req.getParameter("comment").isEmpty()) {
            comment = req.getParameter("comment");
            System.out.println(comment);
            guestBookComment = new GuestBookComment();
            guestBookComment.setComment(comment);
        }

        if (req.getParameter("author") != null && !req.getParameter("author").isEmpty()) {
            author = req.getParameter("author");
            System.out.println(author);
            guestBookComment.setAuthor(author);
        }

        guestBookComment.setYear(2015);
        guestBookComment.setId(id);

        if ((guestBookComment.getComment() != null && !guestBookComment.getComment().isEmpty()) && (guestBookComment.getAuthor() != null && !guestBookComment.getAuthor().isEmpty())) {
            personRepoSQL.createGuestBookComment(guestBookComment);
        }


        person = personRepoSQL.findPersonById(id);
        comments = personRepoSQL.findCommentsByPerson(id);

        class CustomComparator implements Comparator<GuestBookComment> {
            @Override
            public int compare(GuestBookComment c1, GuestBookComment c2) {
                return c1.getYear().compareTo(c2.getYear());
            }
        }
        Collections.sort(comments,new CustomComparator());

        req.setAttribute("person", person);
        req.setAttribute("comments", comments);
        getServletContext().getRequestDispatcher("/people/guestbook.jsp").forward(req,resp);
    }
}
