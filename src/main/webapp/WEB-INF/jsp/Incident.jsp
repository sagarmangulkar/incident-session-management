<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    <form:form method="POST" action="/CreateIncident" modelAttribute="Incident">
        <form:label path="id">id</form:label>
        <form:input path="id" />
        <br>
        <form:label path="name">name</form:label>
        <form:input path="name" />
        <br>
        <form:label path="description">description</form:label>
        <form:input path="description" />
        <br>
        <input type="submit" value="Submit">
        <br>
        <h2> ${id} <h2><br>
        <h2> ${name} <h2><br>
        <h2> ${description} <h2><br>
    </form:form>
    <br>
</body>
</html>
