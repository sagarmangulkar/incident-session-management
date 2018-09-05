package com.basis.WebApp.beans;

import java.util.Date;

enum Status {In_Progress, Completed}

public class Session {
    private String name;
    private Status status;
    private String malwareScanStatus;
    private String associatedIncidentName;
    private Date createTime;

    public Session() {
    }

    public Session(String name, Status status, String malwareScanStatus, String associatedIncidentName, Date createTime) {
        this.name = name;
        this.status = status;
        this.malwareScanStatus = malwareScanStatus;
        this.associatedIncidentName = associatedIncidentName;
        this.createTime = createTime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public String getMalwareScanStatus() {
        return malwareScanStatus;
    }

    public void setMalwareScanStatus(String malwareScanStatus) {
        this.malwareScanStatus = malwareScanStatus;
    }

    public String getAssociatedIncidentName() {
        return associatedIncidentName;
    }

    public void setAssociatedIncidentName(String associatedIncidentName) {
        this.associatedIncidentName = associatedIncidentName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Session session = (Session) o;

        if (name != null ? !name.equals(session.name) : session.name != null) return false;
        if (status != session.status) return false;
        if (malwareScanStatus != null ? !malwareScanStatus.equals(session.malwareScanStatus) : session.malwareScanStatus != null)
            return false;
        if (associatedIncidentName != null ? !associatedIncidentName.equals(session.associatedIncidentName) : session.associatedIncidentName != null)
            return false;
        return createTime != null ? createTime.equals(session.createTime) : session.createTime == null;
    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + (malwareScanStatus != null ? malwareScanStatus.hashCode() : 0);
        result = 31 * result + (associatedIncidentName != null ? associatedIncidentName.hashCode() : 0);
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Session{" +
                "name='" + name + '\'' +
                ", status=" + status +
                ", malwareScanStatus='" + malwareScanStatus + '\'' +
                ", associatedIncidentName='" + associatedIncidentName + '\'' +
                ", createTime=" + createTime +
                '}';
    }
}
