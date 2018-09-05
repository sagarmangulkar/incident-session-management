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
    <title>Update Session</title>
    <script type='text/javascript' src='http://code.jquery.com/jquery.min.js'></script>
</head>
<body class="class-for-index">
    <h2>    Sessions</h2>
    You can update Session here.
    <div>
        <form:form method="POST" action="/UpdateSession" modelAttribute="Session">
        <table border="black">
            <tr>
                <td>
                    Session Name
                </td>
                <td>
                    Associated Incident
                </td>
                <td>
                    Status
                </td>
                <td>
                    Malware Scan Status
                </td>
            </tr>
                <tr>
                    <td>
                        <form:label path="name">
                            ${session.getName()}
                        </form:label>
                        <form:input path="name" type="hidden" value="${session.getName()}"/>
                    </td>
                    <td>
                        <form:label path="associatedIncidentName">
                            ${session.getAssociatedIncidentName()}
                        </form:label>
                        <form:input path="associatedIncidentName" type="hidden" value="${session.getAssociatedIncidentName()}"/>
                    </td>
                    <td align="center">
                        <form:select path="status" class="custom-select" value="${session.getStatus()}">
                            <form:option value="In_Progress" label="In Progress"/>
                            <form:option value="Completed" label="Completed"/>
                        </form:select>
                    </td>
                    <td align="center">
                        <form:input path="malwareScanStatus" value="${session.getMalwareScanStatus()}"/>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="4">
                        <button onclick="location.href = 'ViewSessions';" id="button_view_Session">
                                Cancel
                        </button>
                        <input type="submit" value="Update">
                    </td>
                </tr>
        </table>
        <h2>${successMessage}</h2>
        </form:form>
    </div>
</body>
</html>