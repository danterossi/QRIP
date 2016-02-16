package com.qrip.data;

import java.util.List;

/**
 * Created by ddcdanter on 2/1/15.
 */

public class Person {

    private int id;
    private String name;
    private String firstName;
    private String lastName;
    private int age;
    private int dob;
    private int dod;
    private List<String> quotes;
    private String description;
    private String hair;
    private String eyes;
    private String mother;
    private String father;
    private String birthCity;

    public void setHair(String hair) {
        this.hair = hair;
    }

    public String getHair() {
        return this.hair;
    }

    public void setEyes(String eyes) {
        this.eyes = eyes;
    }

    public String getEyes() {
        return this.eyes;
    }

    public void setMother(String mother) {
        this.mother = mother;
    }

    public String getMother() {
        return this.mother;
    }

    public void setFather(String father) {
        this.father = father;
    }

    public String getFather() {
        return this.father;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return this.description;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getAge() {
        return this.age;
    }

    public void setDob(int dob) {
        this.dob = dob;
    }

    public int getDob() {
        return this.dob;
    }

    public void setDod(int dod) {
        this.dod = dod;
    }

    public int getDod() {
        return this.dod;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return this.id;
    }

    public void setBirthCity(String birthCity) {
        this.birthCity = birthCity;
    }

    public String getBirthCity() {
        return this.birthCity;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public List<String> getQuotes() {
        return quotes;
    }

    public void setQuotes(List<String> quotes) {
        this.quotes = quotes;
    }
}
