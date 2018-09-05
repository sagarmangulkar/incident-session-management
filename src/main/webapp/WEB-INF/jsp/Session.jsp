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
    <title>Create Session</title>
</head>
<body class="class-for-index">
    <h2>Sessions</h2>
        <br>
        <script>
            window.onload = function() {
                document.getElementById("name").value = "";
                document.getElementById("malwareScanStatus").value = "";
            }
            function validate() {
            	var name = document.sessionForm.name.value;
            	var malwareScanStatus = document.sessionForm.malwareScanStatus.value;
            	var associatedIncidentName = document.sessionForm.associatedIncidentName.value;
            	if (name == "") {
            		alert("Kindly provide Name");
            		return false;
            	}
            	if (malwareScanStatus == "") {
            		alert("Kindly provide Malware Scan Status");
            		return false;
            	}
            	if (associatedIncidentName == "NONE") {
            		alert("Kindly select associated Incident Name. (Create Incident first, if there is none.)");
            		return false;
            	}
            	else {
            		return true;
            	}
            }
        </script>
        <div>
        <form:form method="POST" action="/CreateSession" modelAttribute="Session" onsubmit="return validate()" name="sessionForm">
            <table>
                <tr>
                    <td align="center">
                        <form:label path="name">
                            Name
                        </form:label>
                    </td>
                    <td align="center">
                        <form:input path="name" name="name"/>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <form:label path="status">
                            Status
                        </form:label>
                    </td>
                    <td align="center">
                        <form:select path="status" class="custom-select">
                            <form:option value="In_Progress" label="In Progress"/>
                            <form:option value="Completed" label="Completed"/>
                        </form:select>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <form:label path="malwareScanStatus">
                            Malware Scan Status
                        </form:label>
                    </td>
                    <td align="center">
                        <form:input path="malwareScanStatus" name="malwareScanStatus"/>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <form:label path="associatedIncidentName">
                            Associated Incident
                        </form:label>
                    </td>
                    <td align="center">
                        <form:select path="associatedIncidentName" class="custom-select" name="associatedIncidentName">
                            <form:option value="NONE" label="--- Select one ---" />
                            <c:forEach items="${incidents}" var="incident">
                                <form:option value="${incident.getValue().getName()}">
                                    <c:out value="${incident.getValue().getName()}"/>
                                </form:option>
                            </c:forEach>
                        </form:select>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <input type="submit" value="Submit" />
                    </td>
                </tr>
            </table>
        </form:form>
        </div>
        <table>
            <tr>
                <td>
                    <button onclick="location.href = 'ViewIncidents';" id="button_view_incidents">
                        View Incidents
                    </button>
                </td>
                <td>
                    <button onclick="location.href = 'ViewSessions';" id="button_view_sessions">
                        View Sessions
                    </button>
                </td>
            </tr>
        </table>
        <br>
</body>
</html>