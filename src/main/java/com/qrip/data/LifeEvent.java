package com.qrip.data;

/**
 * Created by ddcdanter on 2/25/15.
 */
public class LifeEvent {

    private Integer id;
    private Integer year;
    private String description;
    private String visual;

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return this.id;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Integer getYear() {
        return this.year;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return this.description;
    }

    public void setVisual(String visual) {
        this.visual = visual;
    }

    public String getVisual() {
        return this.visual;
    }
}
