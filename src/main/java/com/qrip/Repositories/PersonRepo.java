package com.qrip.Repositories;

import com.qrip.data.GuestBookComment;
import com.qrip.data.Person;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

/**
 * Created by ddcdanter on 2/1/15.
 */
public interface PersonRepo {

    void createPerson(Person person);

    void createGuestBookComment(GuestBookComment guestBookComment);

    void deleteEvent(Person person);

    List<Person> findAllPeople() throws SQLException;

    List<Person> findPeopleByName(String name);

    List<Person> findPeopleByDescription(String description);

    List<String> findDescriptionsByPerson(int id);

    List<Person> findPeopleByDOB(Date DOB);

    List<Person> findPeopleByDOD(Date DOD);

    List<Person> findPeopleByBirthCity(String birthCity);

    Person findPersonById(int id);

}
