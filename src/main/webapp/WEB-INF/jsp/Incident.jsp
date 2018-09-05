<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="css/styles.css" rel="stylesheet">
    <title>Create Incident</title>
</head>
<body class="class-for-index">
    <h2>Incidents</h2>
    <script>
        window.onload = function(){
            document.getElementById("name").value = "";
            document.getElementById("description").value = "";
        }
        function validate() {
            var name = document.incidentForm.name.value;
            var description = document.incidentForm.description.value;
            if (name == "") {
                alert("Kindly provide Name");
                return false;
            }
            if (description == "") {
                alert("Kindly provide Description");
                return false;
            }
            else {
                return true;
            }
        }
    </script>
    <div>
    <form:form method="POST" action="/CreateIncident" modelAttribute="Incident" onsubmit="return validate()" name="incidentForm">
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
                    <form:label path="description"  name="description">
                        Description
                    </form:label>
                </td>
                <td align="center">
                    <form:input path="description" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <input type="submit" value="Submit">
                </td>
            </tr>
        </table>
        ${successMessage}
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
