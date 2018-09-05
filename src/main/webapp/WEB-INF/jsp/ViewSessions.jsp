<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="css/styles.css" rel="stylesheet">
    <title>Session</title>
    <script type='text/javascript' src='http://code.jquery.com/jquery.min.js'></script>
</head>
<body class="class-for-index">
    <h2>Sessions</h2>
    <button onclick="location.href = 'Session';" id="button_create_session">
        Create Session
    </button>
    <button onclick="location.href = 'ViewIncidents';" id="button_view_incidents">
        View Incidents
    </button>
    <br>
    <br>
    Kindly click on created session name to update it.
    <div>
        <table border="black">
            <tr>
                <td>
                    Name
                </td>
                <td>
                    Status
                </td>
                <td>
                    Malware Scan Status
                </td>
                <td>
                    Associated Incident
                </td>
                <td>
                    Create Time
                </td>
            </tr>
            <c:forEach items="${sessions}" var="session">
                <tr>
                    <td>
                        <a href="SessionToUpdated?sessionName=${session.getValue().getName()}">
                            <c:out value="${session.getValue().getName()}"/>
                        </a>
                    </td>
                    <td>
                        <c:out value="${session.getValue().getStatus()}"/>
                    </td>
                    <td>
                        <c:out value="${session.getValue().getMalwareScanStatus()}"/>
                    </td>
                    <td>
                        <c:out value="${session.getValue().getAssociatedIncidentName()}"/>
                    </td>
                    <td>
                        <c:out value="${session.getValue().getCreateTime()}"/>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <h2>${successMessage}</h2>
</body>
</html>