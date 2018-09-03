<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <link href="css/styles.css" rel="stylesheet">
	<title>Incident and Session Management</title>
</head>

<body class="class-for-index">
    <button onclick="location.href = 'ViewIncidents';" id="button_view_incidents">Incidents</button>
    <button onclick="location.href = 'ViewSessions';" id="button_view_sessions">Sessions</button>
    <br>
    <h3> ${name1} </h3>
</body>

</html>