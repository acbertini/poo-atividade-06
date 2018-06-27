<%-- 
    Document   : Consulta
    Created on : Jun 20, 2018, 00:28:12 AM
    Author     : Junior
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Consultas</title> 
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
        <link href="src/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="src/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="src/css/style.css" rel="stylesheet" type="text/css"/>
        <script src="src/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="src/js/jquery.min.js" type="text/javascript"></script>    

    </head>

    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
        <!--banner-->
        <section id="banner" class="banner">
            <div class="bg-color">
                <nav class="navbar navbar-default navbar-fixed-top">
                    <a class="white text-center">
                        <%@include file="WEB-INF/jspf/header.jspf"%>
                    </a>
                </nav>
                <div class="container">
                    <div class="row">
                        <div class="banner-info">
                            <div class="banner-text text-center">
                                <h1 class="white">Vamos galera terminar essa bagaça!!</h1>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod <br>tempor incididunt ut labore et dolore magna aliqua.</p>
                                <a href="#contact" class="btn btn-appoint">Contate-nos</a>
                            </div>               
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
