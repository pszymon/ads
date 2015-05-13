<%-- 
    Document   : register.jsp
    Created on : 2015-05-07, 15:41:36
    Author     : Mariusz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>

<html>
    <head>
        <title></title>
        <meta charset="utf-8">
        <meta name="author" content="Webtar (www.webtar.pl)" />
        <meta name="robots" content="all" />
        <meta name="description" content=""/>
        <meta name="keywords" content=""/>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="css/style.css" rel="stylesheet">																		<!-- style.css -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <form method="post" action="test" >
                        <div class="form-group">
                            <label>Email address</label>
                            <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label>Login</label>
                            <input type="text" name="login" class="form-control" id="exampleInputEmail1" placeholder="login">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-default">Zarejestruj</button>
                    </form>
                </div>
            </div>

        </div>

        <script src="js/bootstrap.min.js" defer="defer"></script>										<!-- Bootstrap js -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    </body>
</html>
