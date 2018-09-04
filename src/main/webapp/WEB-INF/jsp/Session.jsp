<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="css/styles.css" rel="stylesheet">
    <title>Create Session</title>
</head>
<body class="class-for-index">
    <h2>    Sessions</h2>
        <br>
        <script>
            window.onload = function(){
                document.getElementById("id").value = "";
                document.getElementById("name").value = "";
                document.getElementById("malwareScanStatus").value = "";
            }
        </script>
        <div>
        <form:form method="POST" action="/CreateSession" modelAttribute="Session">
            <table>
                <tr>
                    <td align="center">
                        <form:label path="id">
                            Id
                        </form:label>
                    </td>
                    <td align="center">
                        <form:input path="id" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <form:label path="name">
                            Name
                        </form:label>
                    </td>
                    <td align="center">
                        <form:input path="name" />
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
                        <form:input path="malwareScanStatus" />
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
                        Incidents
                    </button>
                </td>
                <td>
                    <button onclick="location.href = 'ViewSessions';" id="button_view_sessions">
                        Sessions
                    </button>
                </td>
            </tr>
        </table>
        <br>
</body>
</html>