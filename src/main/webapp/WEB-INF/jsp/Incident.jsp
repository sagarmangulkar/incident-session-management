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
    <script>
        window.onload = function(){
            document.getElementById("id").value = "";
            document.getElementById("name").value = "";
            document.getElementById("description").value = "";
        }
    </script>
    <form:form method="POST" action="/CreateIncident" modelAttribute="Incident">
        <table border="black">
            <tr>
                <td align="center"><form:label path="id">id</form:label></td>
                <td align="center"><form:input path="id" /></td>
            </tr>
            <tr>
                <td align="center"><form:label path="name">name</form:label></td>
                <td align="center"><form:input path="name" /></td>
            </tr>
            <tr>
                <td align="center"><form:label path="description">description</form:label></td>
                <td align="center"><form:input path="description" /></td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input type="submit" value="Submit"></td>
            </tr>
        </table>
        ${name} has been added successfully.
    </form:form>

    <table>
        <tr>
            <td><button onclick="location.href = 'ViewIncidents';" id="button_view_incidents">View Incidents</button></td>
            <td><button onclick="location.href = 'ViewSessions';" id="button_view_sessions">View Sessions</button></td>
        </tr>
    </table>
    <br>
</body>
</html>
