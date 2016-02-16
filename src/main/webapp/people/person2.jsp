<!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <!-- Latest(2/20/2015) compiled and minified CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <style>
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
            border: 1px solid #5bc0de;
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
            background: rgb(255, 250, 250);
            margin-bottom: 10px;
            padding-bottom: 0;
            padding-top: 0;
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
<body class="" style="background-color: rgb(255, 250, 250)">
<div class="jumbotron">
    <span>
        <h1 style="padding-left: 10px">
            <a style="text-decoration: none; color: black" href="/people/person2?id=2">${requestScope.person.name}</a>
        </h1>
    </span>
    <span>
        <div class="btn-group btn-group-justified" role="group" aria-label="Justified button group">
            <a href="/people/guestbook?id=2" class="btn btn-default" role="button">Guest Book</a>
            <a href="/people/video?id=2" class="btn btn-default" role="button">Videos</a>
            <a href="/people/timeline?id=2" class="btn btn-default" role="button">Timeline</a>
        </div>
    </span>
    <%--<div style="background-color: black; height: 2px"></div>--%>
    <div style="height: 20px"></div>
    <span>
        <div class="row">
            <div class="col-md-6 col-xs-6 col-sm-6 col-lg-6">
                <div>
                    <img width="90%" height="auto" src="https://scontent-lga1-1.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/603142_10100751735263393_1006547726_n.jpg?oh=4861efbfb1a5e5b204673f8105d15193&oe=55C3574E">
                </div>
            </div>
            <div class="col-md-6 col-xs-6 col-sm-6 col-lg-6">
                <span>
                <div style="float: left; padding-top: 5px">
                    <ul style="list-style-type:none">
                        <li><h5>Full Name: </h5><em>${requestScope.person.name}</em></li>
                        <li><h5>Mother: </h5><em>${requestScope.person.mother}</em></li>
                        <li><h5>Father: </h5><em>${requestScope.person.father}</em></li>
                        <li><h5>Birthplace: </h5><em>${requestScope.person.birthCity}</em></li>
                    </ul>
                </div>
                <div style="float: left; padding-left: 10%; padding-top: 5px">
                    <ul style="list-style-type:none">
                        <li><h5>Date of Birth: </h5><em>${requestScope.person.dob}</em></li>
                        <li><h5>Date of Death: </h5><em>${requestScope.person.dod}</em></li>
                        <li><h5>Eyes: </h5><em>${requestScope.person.eyes}</em></li>
                        <li><h5>Hair: </h5><em>${requestScope.person.hair}</em></li>
                    </ul>
                </div>
                <div style="float: left; padding-left: 10%; padding-top: 5px">
                    <ul style="list-style-type:none">
                        <li><h5>Quotes: </h5></li>
                        <li><h5>- <em>"${requestScope.person.description}"</h5></em></li>
                        <li><h5>- <em>"Gummy"</em></h5></li>
                        <li><h5>- <em>"Noo"</em></h5></li>
                        <li><h5>- <em>"Yea"</em></h5></li>
                        <li><h5>- <em>"Shh, Tessa's sleeping"</em></h5></li>
                    </ul>
                </div>
                </span>
                <div style="margin-top: 40%;"></div>
                <span>
                <div>
                    <p style="font-size: large; font-family: fantasy">Jujubes jujubes candy canes I love macaroon candy tootsie roll marzipan. Chocolate jujubes carrot cake marzipan. Chocolate bar lollipop biscuit cupcake wafer I love marzipan icing. Liquorice lemon drops I love topping jelly beans pudding sugar plum.</p>

                    <p style="font-size: large; font-family: fantasy">Toffee toffee sesame snaps jujubes pie liquorice gummies cake wafer. Gummies sesame snaps ice cream fruitcake chocolate wafer bear claw muffin bonbon. Gummi bears muffin biscuit sweet roll bonbon. Muffin chocolate gummi bears ice cream carrot cake.</p>

                    <p style="font-size: large; font-family: fantasy">Tootsie roll chupa chups carrot cake pastry sesame snaps jelly-o muffin macaroon cheesecake. Fruitcake powder chocolate marzipan gummies oat cake dragée. I love icing I love I love chocolate bar donut brownie.</p>
                </div>
                </span>
            </div>
        </div>
</span>
</div>
<div class="torso">
    <div class="container">
        <div style="padding-top: 25px" class="row">
            <div style="height: 600px; width: auto" id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img style="height: 600px; width: auto" src="https://scontent-lga1-1.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/10985307_10102120107055353_2445445670477574108_n.jpg?oh=3c784348173f3051d44ef6d78d211a65&oe=560D7B0C" alt="ndt">
                    </div>
                    <div class="item">
                        <img style="height: 600px; width: auto" src="https://scontent-lga1-1.xx.fbcdn.net/hphotos-xtp1/v/t1.0-9/11257838_10102095560177493_1937998526837981438_n.jpg?oh=db6e1237310a207ad96fc853bb01479a&oe=55BF19A0" alt="ndt">
                    </div>
                    <div class="item">
                        <img style="height: 600px; width: auto" src="https://scontent-lga1-1.xx.fbcdn.net/hphotos-xat1/v/t1.0-9/11251902_413142122198760_5667949349920338407_n.jpg?oh=86003812086fdd2c041798a60d40b91a&oe=5605ED25" alt="ndt">
                    </div>
                    <div class="item">
                        <img style="height: 600px; width: auto" src="https://scontent-lga1-1.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/11020836_10102075285278553_910360503076719436_n.jpg?oh=d47d0aad624291fbcd7133099f582acd&oe=560ABA9F" alt="ndt">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
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
</html>