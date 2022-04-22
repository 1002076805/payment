
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="static/style/main.css">
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
<body>
<nav class="nav nav-pills nav-justified">
    <a class="nav-link active" href="#">Balance information</a>
    <a href="controller?command=cardList" class="nav-link" href="#">Card information</a>
    <a class="nav-link" href="#">Report</a>
</nav>
</body>
</html>
