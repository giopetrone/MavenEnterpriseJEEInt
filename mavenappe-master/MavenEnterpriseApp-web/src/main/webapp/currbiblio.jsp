<%-- 
    Document   : currbiblio
    Created on : Sep 8, 2014, 11:05:48 AM
    Author     : giovanna
--%>

<%@page import="ejb.Book"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.google.gson.Gson"%> 
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
        <%@ include file="headerStandardPage.jsp" %>      

        <% Gson gson = new Gson();
            String fromJ = (request.getAttribute("jsonObject")).toString();
            Book[] lA = gson.fromJson(fromJ, Book[].class);

        %>

        <div class="jumbotron">
            <div class="container">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Indice</th>
                            <th>Titolo</th>
                            <th>Autore</th>
                            <th>Anno di Pubblicazione</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (int i = 0; i < lA.length; i += 1) {%>
                        <tr class="active">
                            <td><%=i%></td>                           
                            <td><%=lA[i].getTitle()%></td>
                            <td><%=lA[i].getAuthor()%></td>
                            <td>Call in to confirm</td>
                        </tr>
                        <% }%> 
                    </tbody>
                </table>

                <form action="action_page.php">
                    <input list="browsers">
                    <datalist id="browsers">
                        <option value="Internet Explorer">
                        <option value="Firefox">
                        <option value="Chrome">
                        <option value="Opera">
                        <option value="Safari">
                    </datalist> 
                </form>

            </div>
            <%@ include file="addbook.jsp" %>
        </div>

        <%@ include file="footer.jsp" %>
    </body>
</html>
