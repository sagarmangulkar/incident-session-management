package com.basis.WebApp.beans;

import java.util.Arrays;

public class IncidentsToBeDeleted {
    private String[] incidentsToBeDeleted;

    public IncidentsToBeDeleted() {
    }

    public IncidentsToBeDeleted(String[] incidentsToBeDeleted) {
        this.incidentsToBeDeleted = incidentsToBeDeleted;
    }

    public String[] getIncidentsToBeDeleted() {
        return incidentsToBeDeleted;
    }

    public void setIncidentsToBeDeleted(String[] incidentsToBeDeleted) {
        this.incidentsToBeDeleted = incidentsToBeDeleted;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        IncidentsToBeDeleted that = (IncidentsToBeDeleted) o;

        // Probably incorrect - comparing Object[] arrays with Arrays.equals
        return Arrays.equals(incidentsToBeDeleted, that.incidentsToBeDeleted);
    }

    @Override
    public int hashCode() {
        return Arrays.hashCode(incidentsToBeDeleted);
    }

    @Override
    public String toString() {
        return "IncidentsToBeDeleted{" +
                "incidentsToBeDeleted=" + Arrays.toString(incidentsToBeDeleted) +
                '}';
    }
}
