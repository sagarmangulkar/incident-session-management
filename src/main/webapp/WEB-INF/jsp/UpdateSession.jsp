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
    You can update Session here.
    <h2>    Sessions</h2>
    <br>
    <div>
        <form:form method="POST" action="/UpdateSession" modelAttribute="Session">
        <table border="black">
            <tr>
                <td>
                    ID
                </td>
                <td>
                    Name
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
                        <form:label path="id">
                            ${session.getId()}
                        </form:label>
                        <form:input path="id" type="hidden" value="${session.getId()}"/>
                    </td>
                    <td>
                        <form:label path="name">
                            ${session.getName()}
                        </form:label>
                        <form:input path="name" type="hidden" value="${session.getName()}"/>
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
                        <input type="submit" value="Update">
                    </td>
                </tr>
        </table>
        <h2>${successMessage}</h2>
        </form:form>
    </div>
</body>
</html>