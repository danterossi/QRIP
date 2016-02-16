package com.qrip.Controllers;

import com.qrip.data.Person;
import com.qrip.Repositories.PersonRepoSQL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ddcdanter on 2/1/15.
 */
public class PersonListingController extends HttpServlet {

    private PersonRepoSQL personRepoSQL;

    public PersonListingController() {
        this.personRepoSQL = PersonRepoSQL.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Person> people = new ArrayList<Person>();

        try {
            people = this.personRepoSQL.findAllPeople();
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
        req.setAttribute("people",people);
        getServletContext().getRequestDispatcher("/people/listing.jsp").forward(req,resp);
    }
}
