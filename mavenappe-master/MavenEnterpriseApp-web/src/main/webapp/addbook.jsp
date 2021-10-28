<%-- 
    Document   : addbook
    Created on : Sep 8, 2014, 2:58:38 PM
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

        
        <div class="bs-example">
            <h2>Inserisci libro</h2>
            <form class="form-horizontal" action="ServletControllerM" >

                <div class="form-group">
                    <label class="control-label col-xs-3" for="Titolo">Titolo:</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control" id="titolo" placeholder="Titolo" name="titolo">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3" for="Autore">Autore:</label>
                    <div class="col-xs-9">
                        <input type="hidden" name="action" value="addBook">
                        <input type="text" class="form-control" id="autore" placeholder="Autore" name="autore">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3" for="phoneNumber">Phone:</label>
                    <div class="col-xs-9">
                        <input type="tel" class="form-control" id="phoneNumber" placeholder="Phone Number">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-3"> 
                    </div>
                    <div class="col-xs-3"> 

                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Mese <span class="caret"></span></button>
                        <ul class="dropdown-menu scrollable-menu">
                            <li><a href="#">Gennaio</a></li>
                            <li><a href="#">Febbraio</a></li>
                            <li><a href="#">Marzo</a></li>
                            <li><a href="#">Aprile</a></li>
                            <li><a href="#">Maggio</a></li>
                            <li><a href="#">Giugno</a></li> 
                            <li><a href="#">Luglio</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Trash</a></li>
                        </ul>
                    </div>

                    <div class="col-xs-3">
                        <select class="form-control">
                            <option>Year</option>
                        </select>
                    </div>  
                </div>
                <%-- 
                    DA FARE DATE PICKER
                --%>

                <div class="form-group">
                    <label class="control-label col-xs-3">Gender:</label>
                    <div class="col-xs-2">
                        <label class="radio-inline">
                            <input type="radio" name="genderRadios" value="male"> Male
                        </label>
                    </div>
                    <div class="col-xs-2">
                        <label class="radio-inline">
                            <input type="radio" name="genderRadios" value="female"> Female
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-offset-3 col-xs-9">
                        <label class="checkbox-inline">
                            <input type="checkbox" value="news"> Send me latest news and updates.
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-offset-3 col-xs-9">
                        <label class="checkbox-inline">
                            <input type="checkbox" value="agree">  I agree to the <a href="#">Terms and Conditions</a>.
                        </label>
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="col-xs-offset-3 col-xs-9">
                        <input type="submit" class="btn btn-primary" value="Submit" >
                        <input type="reset" class="btn btn-default" value="Reset">
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
