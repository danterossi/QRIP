package com.qrip.Repositories;

import com.qrip.data.GuestBookComment;
import com.qrip.data.LifeEvent;
import com.qrip.data.Person;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by ddcdanter on 2/1/15.
 */

public class PersonRepoSQL implements PersonRepo {
    private static PersonRepoSQL instance;
    private Connection connection;

    public static PersonRepoSQL getInstance() {
        if (instance == null) {
            instance = new PersonRepoSQL();
        }
        return instance;
    }

    private PersonRepoSQL() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        }

        String url = "jdbc:mysql://localhost:3306/people";
        String username = "root";
        String password = "";

        try {
            this.connection = DriverManager.getConnection(url, username, password);
        } catch(SQLException se) {
            se.printStackTrace();
        }
    }

    @Override
    public void createPerson(Person person) {

    }

    @Override
    public void createGuestBookComment(GuestBookComment guestBookComment) {
        final String query = "INSERT INTO comments (Id,Author,Year,Comment)\n" +
                "VALUES ("+guestBookComment.getId()+",\""+guestBookComment.getAuthor()+"\","+guestBookComment.getYear()+",\""+guestBookComment.getComment()+"\");";

        try {
            Statement stmt = this.connection.createStatement();
            stmt.executeUpdate(query);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteEvent(Person person) {

    }

    @Override
    public List<Person> findAllPeople() throws SQLException {
        final String query = "SELECT * FROM people";

        List<Person> people = new ArrayList<Person>();

        try {
            Statement stmt = this.connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            if (rs != null) {
                while (rs.next()) {
                    Person per = new Person();
                    per.setName(rs.getString("Name"));
                    per.setAge(rs.getInt("Age"));
                    per.setDob(rs.getInt("dob"));
                    per.setDod(rs.getInt("dod"));
                    per.setId(rs.getInt("Id"));
                    people.add(per);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return people;
    }

    @Override
    public List<Person> findPeopleByName(String name) {
        return null;
    }

    @Override
    public List<Person> findPeopleByDescription(String description) {
        return null;
    }

    @Override
    public List<String> findDescriptionsByPerson(int id) {
        String query = "SELECT * FROM quotes WHERE Id="+id;

        List<String> quotes = new ArrayList<String>();

        try {
            Statement stmt = this.connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            if (rs != null) {
                while (rs.next()) {
                    quotes.add(rs.getString("Description"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return quotes;
    }

    public List<LifeEvent> findEventsByPerson(int id) {
        String query = "SELECT * FROM events WHERE Id="+id;

        List<LifeEvent> events = new ArrayList<LifeEvent>();

        try {
            Statement stmt = this.connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            if (rs != null) {
                while (rs.next()) {
                    LifeEvent le = new LifeEvent();
                    le.setYear(rs.getInt("Year"));
                    le.setDescription(rs.getString("description"));
                    le.setVisual(rs.getString("Thing"));
                    events.add(le);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return events;
    }

    public List<GuestBookComment> findCommentsByPerson(int id) {
        String query = "SELECT * FROM comments WHERE Id="+id;

        List<GuestBookComment> comments = new ArrayList<GuestBookComment>();

        try {
            Statement stmt = this.connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            if (rs != null) {
                while (rs.next()) {
                    GuestBookComment comment = new GuestBookComment();
                    comment.setYear(rs.getInt("Year"));
                    comment.setComment(rs.getString("Comment"));
                    comment.setAuthor(rs.getString("Author"));
                    comments.add(comment);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comments;
    }

    @Override
    public List<Person> findPeopleByDOB(Date DOB) {
        return null;
    }

    @Override
    public List<Person> findPeopleByDOD(Date DOD) {
        return null;
    }

    @Override
    public List<Person> findPeopleByBirthCity(String birthCity) {
        return null;
    }

    @Override
    public Person findPersonById(int id) {
        String query = "SELECT * FROM people WHERE Id="+id;

        Person person = new Person();

        try {
            Statement stmt = this.connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            if (rs != null) {
                while (rs.next()) {
                    person.setName(rs.getString("Name"));
                    person.setAge(rs.getInt("Age"));
                    person.setDob(rs.getInt("dob"));
                    person.setDod(rs.getInt("dod"));
                    person.setId(rs.getInt("Id"));
                    person.setBirthCity(rs.getString("birthCity"));
                    person.setEyes(rs.getString("eyes"));
                    person.setFather(rs.getString("father"));
                    person.setMother(rs.getString("mother"));
                    person.setHair(rs.getString("hair"));
                    person.setDescription(rs.getString("description"));

                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return person;
    }
}
