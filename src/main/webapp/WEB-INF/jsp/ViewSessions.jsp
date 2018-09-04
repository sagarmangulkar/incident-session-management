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
    <title>Session</title>
    <script type='text/javascript' src='http://code.jquery.com/jquery.min.js'></script>
</head>
<body class="class-for-index">
    <h2>    Sessions</h2>
    <br>
    <button onclick="location.href = 'Session';" id="button_create_session">Create Session</button>
    <br>
    <br>
    <div>
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
            <c:forEach items="${sessions}" var="session">
                <tr>
                    <td>
                        <a href="SessionToUpdated?id=${session.getKey()}">
                            <c:out value="${session.getKey()}"/>
                        </a>
                    </td>
                    <td>
                        <c:out value="${session.getValue().getName()}"/>
                    </td>
                    <td>
                        <c:out value="${session.getValue().getStatus()}"/>
                    </td>
                    <td>
                        <c:out value="${session.getValue().getMalwareScanStatus()}"/>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <h2>${successMessage}</h2>
</body>
</html>