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
    <title>Incident</title>
    <script type='text/javascript' src='http://code.jquery.com/jquery.min.js'></script>
</head>
<body class="class-for-index">

    <br>
    <button onclick="location.href = 'Incident';" id="button_create_incident">Create</button>
    <br>
    <br>
    <form:form method="POST" action="/DeleteIncident" modelAttribute="IncidentsToBeDeleted" id="incidentForm">
        <input type="submit" value="Delete" id="submit">
        <br>
        <h3>Incidents</h3><br>
        <table border="black">
            <tr>
                <td>
                </td>
                <td>
                    ID
                </td>
                <td>
                    Name
                </td>
                <td>
                    Description
                </td>
            </tr>
            <c:forEach items="${incidents}" var="incident">
                <tr>
                    <td>
                        <form:checkbox path="idsToBeDeleted" value="${incident.getKey()}" onClick="enableDeleteButton(this)" id="myCheck"/>
                    </td>
                    <td>
                        <c:out value="${incident.getKey()}"/>
                    </td>
                    <td>
                        <c:out value="${incident.getValue().getName()}"/>
                    </td>
                    <td>
                        <c:out value="${incident.getValue().getDescription()}"/>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form:form>
    <h2>${successMessage}</h2>


    <script>
        window.onload = function(){
            document.getElementById('submit').disabled=true;
        }

        function enableDeleteButton(tokenCheckBox) {
          if (tokenCheckBox.checked == true) {
            document.getElementById('submit').disabled=false;
          } else {
            document.getElementById('submit').disabled=true;
          }
        }
    </script>

</body>
</html>