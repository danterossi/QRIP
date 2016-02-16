<%--
  Created by IntelliJ IDEA.
  User: ddcdanter
  Date: 2/27/15
  Time: 7:42 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Memorial Technologies</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <style>
        .full {
            background: url("/attachments/sky-hd-wallpaper.jpg") no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
    </style>
</head>
<body class="full">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h1 style="color: white; text-shadow: -2px 0 black, 0 0px black, 0px 0 black, 0 2px black;">${requestScope.person.name}</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2"></div>
            <div class="col-xs-8">
                <img class="img-responsive img-circle" src="/attachments/photo%202.JPG">
            </div>
            <div class="col-xs-2"></div>
        </div>
        <div class="row" style="padding-top: 5%;">
            <div class="col-xs-12">
                <a role="button" type="people/biography?id=${requestScope.person.id}" class="btn btn-primary btn-lg btn-block">Biography</a>
                <a role="button" href="people/video?id=${requestScope.person.id}" type="button" class="btn btn-default btn-lg btn-block">Video</a>
                <a role="button" type="button" class="btn btn-default btn-lg btn-block">Pictures</a>
                <a role="button" href="people/timeline?id=${requestScope.person.id}" type="button" class="btn btn-default btn-lg btn-block">Timeline</a>
                <a role="button" href="people/guestbook?id=${requestScope.person.id}" type="button" class="btn btn-default btn-lg btn-block">Guest Book</a>
            </div>
        </div>
    </div>
    <footer class="footer" style="padding-top: 5%;">
        <div class="container-fluid">
            <p class="text-muted">Memorial Technologies, LLC &#169;</p>
        </div>
    </footer>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</html>