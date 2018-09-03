<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="styles.css" rel="stylesheet">
    <title>Incident</title>
</head>
<body class="class-for-index">
    This is Incident...!
    <br>
    <button onclick="location.href = 'Incident';" id="button_create_incident">Create</button>
    <br>
    <br>
    <button onclick="location.href = 'DeleteIncident';" id="button_delete_incident">Delete</button>
    <br>
    <h3>Incidents</h3><br>
    <table border="black">
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Description</td>
        </tr>
        <c:forEach items="${incidents}" var="incident">
            <tr>
                <td><c:out value="${incident.getKey()}"/></td>
                <td><c:out value="${incident.getValue().getName()}"/></td>
                <td><c:out value="${incident.getValue().getDescription()}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>