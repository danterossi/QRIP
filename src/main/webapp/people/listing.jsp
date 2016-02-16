<!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <!-- Latest(2/20/2015) compiled and minified CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    <!-- Latest(2/20/2015) compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <style>
        body {
            background: url("/resources/assets/granite_quarry.jpg") no-repeat;
            -moz-background-size: cover;
            -webkit-background-size: cover;
            background-size: cover;
        }
    </style>
</head>
<body>
<div class="container">
<c:forEach var="person" items="${people}">
    <div class="row">
        <div class="col-lg-4">
            <h1 style="background-color:aliceblue; opacity: 0.8;">${person.name}</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4">
            <div style="background-color:aliceblue opacity: 0.8;"></div>
        </div>
        <div style="background-color:aliceblue opacity: 0.8;" class="col-lg-2">
            <div><strong>${person.age}</strong></div>
            <div><em>${person.dob}</em></div>
            <div><em>${person.dod}</em></div>
        </div>
    </div>
    <div class="row">
        <div>
            <img style="max-height:75%;max-width:75%" src="<c:url value="${person.thing}"/>"/>
        </div>
    </div>
</c:forEach>
</div>
</body>
</html>