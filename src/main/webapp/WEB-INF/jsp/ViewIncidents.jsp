<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <h3>${name}</h3>
</body>
</html>