<%-- 
    Document   : index
    Created on : Sep 1, 2014, 1:02:00 PM
    Author     : giovanna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="include/css/bootstrap.min.css">
        <style>
            body {
                padding-top: 50px;
                padding-bottom: 20px;
            }
        </style>
        <link rel="stylesheet" href="include/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="include/css/main.css">

        <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>  <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <%@ include file="header2.jsp" %>
        <div class="jumbotron">
            <div class="container">
                <h1>Hello, world!</h1>
                <p>This is a spike for J2EE simple web app</p>
                <p><a class="btn btn-primary btn-lg" role="button">Learn more &raquo;</a></p>
            </div>
        </div>          
        <%@ include file="footer.jsp" %>
    </body>
</html>
