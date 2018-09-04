package com.basis.WebApp.beans;

import java.util.Date;

enum Status {In_Progress, Completed}
public class Session {
    private int id;
    private String name;
    private Status status;
    private String malwareScanStatus;
    private Date createTime;

    public Session() {
    }

    public Session(int id, String name, Status status, String malwareScanStatus, Date createTime) {
        this.id = id;
        this.name = name;
        this.status = status;
        this.malwareScanStatus = malwareScanStatus;
        this.createTime = new Date();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

        if (id != session.id) return false;
        if (name != null ? !name.equals(session.name) : session.name != null) return false;
        if (status != session.status) return false;
        if (malwareScanStatus != null ? !malwareScanStatus.equals(session.malwareScanStatus) : session.malwareScanStatus != null)
            return false;
        return createTime != null ? createTime.equals(session.createTime) : session.createTime == null;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + (malwareScanStatus != null ? malwareScanStatus.hashCode() : 0);
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Session{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", status=" + status +
                ", malwareScanStatus='" + malwareScanStatus + '\'' +
                ", createTime=" + createTime +
                '}';
    }
}
