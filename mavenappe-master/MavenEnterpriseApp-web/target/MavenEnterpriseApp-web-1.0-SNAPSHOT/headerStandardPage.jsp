<%-- 
    Document   : headerStandardPage
    Created on : Sep 4, 2014, 9:53:46 AM
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
    <body>
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Spike1 internal page</a>
                </div>
                <div class="navbar-collapse collapse">
                    LOGOUT da fare
                    
                    <form class="navbar-form navbar-right" role="form" action="ServletControllerM">
                        <div class="form-group">
                            <input type="hidden" name="action" value="register">
                            <input type="email" placeholder= <%= request.getParameter("email")%> class="form-control"  name="email">
                        </div>
                        
                        <button type="submit" class="btn btn-success">Logout</button>
                    </form>
                </div><!--/.navbar-collapse -->
            </div>
        </div>
    </body>
</html>
