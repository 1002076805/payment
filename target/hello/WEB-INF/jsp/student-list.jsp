<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="static/css/main.css">
    <link rel="stylesheet" href="static/bootstrap/bootstrap.4.6.min.css">
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            text-align: center;
        }
        tr:nth-child(even) {
            background-color: rgba(150, 212, 212, 0.4);
        }
        th:nth-child(even),td:nth-child(even) {
            background-color: rgba(150, 212, 212, 0.4);
        }
    </style>
</head>
    <body class="studentlist_body">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">Student Information </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">main <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="add-student.jsp">add student</a>
                    </li>

                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Logout</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
    <div class="studentlist_div" >
        <h2 class="h2">Student list </h2>
        <table>
                <tr>
                    <th>id</th>
                    <th>name</th>
                    <th>studentid</th>
                    <th>major</th>
                    <th>mentor</th>
                    <th>gender</th>
                    <th>telephone</th>
                </tr>
        <c:forEach items="${students}" var="student">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.studentid}</td>
                    <td>${student.major}</td>
                    <td>${student.mentor}</td>
                    <td>${student.gender}</td>
                    <td>${student.telephone}</td>
                </tr>
        </c:forEach>
        </table>
    </div>
    </body>
</html>