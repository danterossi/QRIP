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
            background: url("http://hdwbin.com/wp-content/uploads/2015/02/sky-hd-wallpaper.jpg") no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
    </style>
    <script>
        var myHeading = document.querySelector('h1');
        myHeading.innerHTML = 'Hello world!';
    </script>
</head>
<body class="full">
<h1></h1>
    <div class="container-fluid" style="box-shadow: 10px 10px 5px rgba(0,0,0,.5);height:550px;margin: 5% 5% 5% 10%;">
        <div class="row">
            <div class="col-lg-6" style="background: rgba(255,255,255,.2);max-width: 100%;height: 550px;border: black 1px solid">
                <div>
                    <img src="https://drive.google.com/thumbnail?id=0B9woSy_g8hfSb2haYkkwSTNfOE0&authuser=0&v=1425853191445&sz=w2560-h844">
                </div>
            </div>
            <div class="col-lg-6" style="background: rgba(255,255,255,.8); height: 550px;border: black 1px solid">
                <div class="row" style="margin-left: 125px;margin-top: 25px" >
                    <img src="http://www.clker.com/cliparts/2/0/0/9/1197089211475574592Chrisdesign_Tree_silhouettes_5.svg.hi.png" style="height: 225px;width: auto">
                </div>
                <div class="row" style="margin-top: -250px;">
                <form action="#" method="post" style="padding-top: 50%">
                    <div class="row">
                    <div class="form-group col-lg-10 col-lg-offset-1">
                        <label for="email">Email address</label>
                        <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                    </div>
                    </div>
                    <div class="row">
                    <div class="form-group col-lg-10 col-lg-offset-1">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                    </div>
                    <div class="form-group col-lg-10 col-lg-offset-1">
                        <a>Already have an account?</a>
                    </div>
                    <div class="checkbox col-lg-12 col-lg-offset-1" style="margin-top: -10px;">
                        <label>
                            <input type="checkbox">
                            Remember Me
                        </label>
                    </div>
                    </div>
                    <button type="submit" class="btn btn-primary col-lg-3 col-lg-offset-1">Submit</button>
                </form>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</html>