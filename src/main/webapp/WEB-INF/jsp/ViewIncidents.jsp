<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    <br>
    <button onclick="location.href = 'Incident';" id="button_create_incident">Create</button>
    <br>
    <br>
    <form:form method="POST" action="/DeleteIncident" modelAttribute="IncidentsToBeDeleted">
        <input type="submit" value="Delete">
        <br>
        <h3>Incidents</h3><br>
        <table border="black">
            <tr>
                <td></td>
                <td>ID</td>
                <td>Name</td>
                <td>Description</td>
            </tr>
            <c:forEach items="${incidents}" var="incident">
                <tr>
                    <%--<td><form:checkbox path="idsToBeDeleted[${status.index}].checkControl"/></td>--%>
                    <td><form:checkbox path="idsToBeDeleted" value="${incident.getKey()}"/></td>
                    <td><c:out value="${incident.getKey()}"/></td>
                    <td><c:out value="${incident.getValue().getName()}"/></td>
                    <td><c:out value="${incident.getValue().getDescription()}"/></td>
                </tr>
            </c:forEach>
        </table>
    </form:form>
    <h2>${deleteSize}</h2>
</body>
</html>