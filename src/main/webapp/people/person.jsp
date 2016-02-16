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
    </style>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>
        function initialize() {
            var mapCanvas = document.getElementById('map-canvas');
            var mapOptions = {
                center: new google.maps.LatLng(44.2007500, -72.538834),
                zoom: 18,
                mapTypeId: google.maps.MapTypeId.SATELLITE
            };
            var map = new google.maps.Map(mapCanvas, mapOptions)
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>
<body>
<div class="jumbotron">
    <h2>${requestScope.person.name}</h2>
</div>
<div class="container-non-responsive">
    <div class="row">
    <div class="col-xs-12">
    <ul class="nav nav-pills">
        <li role="presentation" class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="true">
                Age
                <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="#">${requestScope.person.age}</a></li>
            </ul>
        </li>
        <li role="presentation" class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="true">
                Year of Birth
                <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="#">${requestScope.person.dob}</a></li>
            </ul>
        </li>
        <li role="presentation" class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="true">
                Year of Death
                <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="#">${requestScope.person.dod}</a></li>
            </ul>
        </li>
        <li role="presentation" class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="true">
                Place of Birth
                <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="#">${requestScope.person.birthCity}</a></li>
            </ul>
        </li>
    </ul>
</div>
</div>
</div>
<div class="torso">
<div class="container-fluid">
    <div class="row">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="/resources/assets/1-12-14-Neil-deGrasse-Tyson-inside-main-ftr.jpg" alt="ndt">
                </div>
                <div class="item">
                    <img src="/resources/assets/img_7883-version-2_sm-0_cinema_1200-0.jpg" alt="ndt">
                </div>
                <div class="item">
                    <img src="/resources/assets/neil-degrasse-tyson.jpg" alt="ndt">
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
    <div class="containter-fluid whitestripe">
    <div class="row">
        <!--LEFT THIRD-->
        <div class="col-lg-2"></div>
        <!--MIDDLE THIRD-->
        <div class="col-lg-8" style="padding-bottom: 25px;">
            <div>
            <c:forEach var="quote" items="${quotes}">
                <blockquote style="margin-top: 30px">
                    <p>${quote}</p>
                    <footer><cite title="Source Title">${requestScope.person.name}</cite></footer>
                </blockquote>
            </c:forEach>
            </div>
        </div>
        <!--RIGHT THIRD-->
        <div class="col-lg-2"></div>
    </div>
    </div>
    <div class="container-fluid" style="border-top: #428bca solid 3px;>
    <div class="row">
        <!--LEFT THIRD-->
        <div class="col-lg-3 col-sm-3">
        </div>
        <!--MIDDLE THIRD-->
        <div class="col-lg-6 col-sm-6" style="margin-top: 50px; margin-bottom: 50px;">
            <!-- 16:9 aspect ratio -->
            <div class="embed-responsive embed-responsive-16by9" style="border: #ffffff solid 2px">
                <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/o5y8Uj_GMEk"></iframe>
            </div>
        </div>
        <!--RIGHT THIRD-->
        <div class="col-lg-3 col-sm-3">
        </div>
    </div>
    <div class="container-fluid whitestripe" style="border-top: #428bca solid 3px">
        <div class="row">
            <div class="col-lg-12 col-sm-12 col-xs-12" style="margin-top: 75px; margin-bottom: 75px;">
                <div id="map-canvas" class="collapse in"></div>
        </div>
    </div>
</div>
<div class="container-fluid  whitestripe" style="border-bottom: #428bca solid 5px">
    <div class="page-header">
        <h1 id="timeline">Life Events</h1>
    </div>
    <c:forEach var="event" items="${events}">
    <ul class="timeline">
        <li>
            <div class="timeline-badge info"><i class="glyphicon glyphicon-time"></i></div>
            <div class="timeline-panel">
                <div class="timeline-heading">
                    <h4 class="timeline-title">${event.description} - <em>${event.year}</em></h4>
                </div>
                <div class="timeline-body">
                    <p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>
                </div>
            </div>
        </li>
        <li class="timeline-inverted">
            <div class="timeline-badge info"><i class="glyphicon glyphicon-camera"></i></div>
            <div class="timeline-panel">
                <div class="timeline-heading"></div>
                <div class="timeline-body">
                    <div style="margin-left: 20%">
                        <img style="border: black solid 2px" src="${event.visual}">
                    </div>
                </div>
            </div>
        </li>
    </ul>
    </c:forEach>
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