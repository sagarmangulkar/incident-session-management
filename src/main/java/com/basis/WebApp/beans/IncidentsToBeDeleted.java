package com.basis.WebApp.beans;

import java.util.Arrays;

public class IncidentsToBeDeleted {
    private Integer[] idsToBeDeleted;

    public IncidentsToBeDeleted() {
    }

    public IncidentsToBeDeleted(Integer[] incidents) {
        this.idsToBeDeleted = incidents;
    }

    public Integer[] getIdsToBeDeleted() {
        return idsToBeDeleted;
    }

    public void setIdsToBeDeleted(Integer[] idsToBeDeleted) {
        this.idsToBeDeleted = idsToBeDeleted;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        IncidentsToBeDeleted that = (IncidentsToBeDeleted) o;

        return Arrays.equals(idsToBeDeleted, that.idsToBeDeleted);
    }

    @Override
    public int hashCode() {
        return Arrays.hashCode(idsToBeDeleted);
    }
}
