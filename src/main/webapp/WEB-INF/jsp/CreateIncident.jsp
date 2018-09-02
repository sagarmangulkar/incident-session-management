<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="styles.css" rel="stylesheet">
    <title>Create Incident</title>
</head>
<body class="class-for-index">
    This is Create Incident...!
    <br>
    <form method="post" action="/CreateIncident" ModelAttribute = "Incident" id="user_form">
        Incident Name: <input type="text" name="text_incident_name">
        <br>
        Description: <input type="text" name="text_description">
        <br>
        <input type="submit">
        <br>
    </form>
    <br>
    <h2> ${name} <h2>
</body>
</html>
