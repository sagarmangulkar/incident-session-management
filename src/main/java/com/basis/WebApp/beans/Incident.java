package com.basis.WebApp.beans;

import java.util.Date;

public class Incident {
    private String name;
    private String description;
    private Date creationTime;

    public Incident() {
    }

    public Incident(String name, String description, Date creationTime) {
        this.name = name;
        this.description = description;
        this.creationTime = creationTime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Incident incident = (Incident) o;

        if (name != null ? !name.equals(incident.name) : incident.name != null) return false;
        if (description != null ? !description.equals(incident.description) : incident.description != null)
            return false;
        return creationTime != null ? creationTime.equals(incident.creationTime) : incident.creationTime == null;
    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (creationTime != null ? creationTime.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Incident{" +
                "name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", creationTime=" + creationTime +
                '}';
    }
}
