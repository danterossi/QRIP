<!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <!-- Latest(2/20/2015) compiled and minified CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <style>
        .timeline {
            list-style: none;
            padding: 20px 0 20px;
            position: relative;
        }
        .timeline:before {
            top: 0;
            bottom: 0;
            position: absolute;
            content: " ";
            width: 3px;
            background-color: #eeeeee;
            left: 50%;
            margin-left: -1.5px;
        }
        .timeline > li {
            margin-bottom: 20px;
            position: relative;
        }
        .timeline > li:before,
        .timeline > li:after {
            content: " ";
            display: table;
        }
        .timeline > li:after {
            clear: both;
        }
        .timeline > li:before,
        .timeline > li:after {
            content: " ";
            display: table;
        }
        .timeline > li:after {
            clear: both;
        }
        .timeline > li > .timeline-panel {
            background: rgba(255,255,255, 0.8);
            width: 100%;
            top: 60px;
            float: left;
            border: 1px solid black;
            border-radius: 2px;
            padding: 20px;
            position: relative;
            -webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
            box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
        }
        .timeline > li > .timeline-badge {
            margin-top: -5%;
            color: #fff;
            width: 50px;
            height: 50px;
            line-height: 50px;
            font-size: 1.4em;
            text-align: center;
            position: absolute;
            top: 16px;
            left: 50%;
            margin-left: -25px;
            background-color: #999999;
            z-index: 100;
            border-top-right-radius: 50%;
            border-top-left-radius: 50%;
            border-bottom-right-radius: 50%;
            border-bottom-left-radius: 50%;
        }
        .timeline-inverted {
            margin-top: 30%;
        }
        .timeline > li.timeline-inverted > .timeline-panel {
            background: rgba(255,255,255, 0.8);
            float: right;
        }
        .timeline > li.timeline-inverted > .timeline-panel:before {
            border-left-width: 0;
            border-right-width: 15px;
            left: -15px;
            right: auto;
        }
        .timeline > li.timeline-inverted > .timeline-panel:after {
            border-left-width: 0;
            border-right-width: 14px;
            left: -14px;
            right: auto;
        }
        .timeline-badge.primary {
            background-color: #2e6da4 !important;
        }
        .timeline-badge.success {
            background-color: #3f903f !important;
        }
        .timeline-badge.warning {
            background-color: #f0ad4e !important;
        }
        .timeline-badge.danger {
            background-color: #d9534f !important;
        }
        .timeline-badge.info {
            background-color: #5bc0de !important;
        }
        .timeline-title {
            margin-top: 0;
            color: black;
        }
        .timeline-title span {
            float: right;
        }
        .timeline-body > p,
        .timeline-body > ul {
            margin-bottom: 0;
        }
        .timeline-body > p + p {
            margin-top: 5px;
        }
        .timeline-body img {
            height: 85%;
            width: 85%;
        }
        .container-non-responsive {
            /* Margin/padding copied from Bootstrap */
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        .torso {
            background: black no-repeat;
            -moz-background-size: cover;
            -webkit-background-size: cover;
            background-size: cover;
        }
        #map-canvas {
            width: auto;
            height: 300px;
            margin-left: 10%;
            margin-right: 10%;
        }
        .carousel {
            border-top: #428bca solid 5px;
        }
        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            margin: auto;
        }
        .whitestripe {
            background: white;
            border-top: #428bca solid 3px;
        }
        /* Sticky footer styles
        -------------------------------------------------- */
        html {
            position: relative;
            min-height: 100%;
        }
        body {
            /* Margin bottom by footer height */
            margin-bottom: 60px;
        }
        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            /* Set the fixed height of the footer here */
            height: 40px;
        }
        .jumbotron {
            background: white;
            margin-bottom: 10px;
            padding-bottom: 0;
            padding-top: 24px;
        }
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
    <div class="page-header">
        <h1 id="timeline">${person.name}'s GuestBook</h1>
    </div>
    <c:forEach var="comment" items="${comments}">
        <ul class="timeline">
            <li>
                <div class="timeline-badge info"><i class="glyphicon glyphicon-heart-empty"></i></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="timeline-title">${comment.author} <span><em>${comment.year}</em></span></h4>
                    </div>
                    <div class="timeline-body">
                        <p>${comment.comment}</p>
                    </div>
                </div>
            </li>
        </ul>
    </c:forEach>
    <ul class="timeline">
    <li class="timeline-inverted">
        <div class="timeline-badge info"><i class="glyphicon glyphicon-heart-empty"></i></div>
        <div class="timeline-panel">
            <div class="timeline-heading"></div>
            <div class="timeline-body">
                <div style="padding-bottom: 20px">
                    <img style="display:block; margin-left:auto; margin-right:auto" src="/attachments/heritage festival 1979-1.jpg">
                </div>
                <div>
                    <form action="#" method="post">
                        <input type="text" class="form-control" name="author" id="author" placeholder="What's your name?">
                        <div style="padding-top: 5px"></div>
                        <input type="text" class="form-control" name="comment" id="comment" placeholder="What would you like to say?">
                        <div style="padding-top: 10px"></div>
                        <button type="submit" class="btn btn-primary">Tell ${person.name}</button>
                    </form>
                </div>
            </div>
        </div>
    </li>
    </ul>
</div>
<footer class="footer">
    <div class="container">
        <p class="text-muted">Memorial Technologies, LLC &#169;</p>
    </div>
</footer>
</body>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest(2/20/2015) compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</html>