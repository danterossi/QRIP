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
            width: 46%;
            float: left;
            border: 1px solid white;
            border-radius: 2px;
            padding: 20px;
            position: relative;
            -webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
            box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
        }
        .timeline > li > .timeline-panel:before {
            position: absolute;
            top: 26px;
            right: -15px;
            display: inline-block;
            border-top: 15px solid transparent;
            border-left: 15px solid #ccc;
            border-right: 0 solid #ccc;
            border-bottom: 15px solid transparent;
            content: " ";
        }
        .timeline > li > .timeline-panel:after {
            position: absolute;
            top: 27px;
            right: -14px;
            display: inline-block;
            border-top: 14px solid transparent;
            border-left: 14px solid #fff;
            border-right: 0 solid #fff;
            border-bottom: 14px solid transparent;
            content: " ";
        }
        .timeline > li > .timeline-badge {
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
        .timeline > li.timeline-inverted > .timeline-panel {
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
            color: inherit;
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
            background: url("http://hdwbin.com/wp-content/uploads/2015/02/sky-hd-wallpaper.jpg") no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
    </style>
</head>
<body class="full">
<div class="full jumbotron">
    <span>
        <h1 style="padding-left: 10px">
            <a style="text-decoration: none; color: black" href="/people/person2?id=2">${requestScope.person.name}</a>
        </h1>
    </span>
    <span>
        <div class="btn-group btn-group-justified" role="group" aria-label="Justified button group">
            <a href="/people/person2?id=2" class="btn btn-default" role="button">Home</a>
            <a href="/people/timeline?id=2" class="btn btn-default" role="button">Timeline</a>
            <a href="/people/guestbook?id=2" class="btn btn-default" role="button">Guest Book</a>
        </div>
    </span>
</div>
<div class="container" style="background-color: rgb(255, 250, 250)">
    <div>
        <div id="fb-root"></div>
        <div class="fb-video" data-allowfullscreen="true" data-href="/kristina.holcomb.35/videos/vb.9215399/10102040004601313/?type=1">
            <div class="fb-xfbml-parse-ignore"><blockquote cite="/kristina.holcomb.35/videos/10102040004601313/">
                <a href="/kristina.holcomb.35/videos/10102040004601313/"></a>
                Posted by <a href="https://www.facebook.com/kristina.holcomb.35">Kristina Holcomb</a> on Wednesday, April 8, 2015
            </blockquote>
            </div>
        </div>
    </div>
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

<script>(function(d, s, id) {  var js, fjs = d.getElementsByTagName(s)[0];  if (d.getElementById(id)) return;  js = d.createElement(s); js.id = id;  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3";  fjs.parentNode.insertBefore(js, fjs);}(document, 'script', 'facebook-jssdk'));</script>
</html>