package com.basis.WebApp.beans;

import java.util.Date;

public class Incident {
    private int id;
    private String name;
    private String description;
    private Date creationTime;

    public Incident(int id, String name, String description, Date creationTime) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.creationTime = new Date();
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public Date getCreationTime() {
        return creationTime;
    }
}
