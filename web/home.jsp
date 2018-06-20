    <%-- 
        Document   : index
        Created on : Jun 10, 2018, 10:04:55 AM
        Author     : AnaBertini
    --%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="pt-br">
    
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Home</title>    
      <link href="src/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
      <link href="src/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
      <link href="src/css/style.css" rel="stylesheet" type="text/css"/>
      <script src="src/js/bootstrap.min.js" type="text/javascript"></script>
      <script src="src/js/jquery.easing.min.js" type="text/javascript"></script>
      <script src="src/js/jquery.min.js" type="text/javascript"></script>
      <script src="src/js/custom.js" type="text/javascript"></script>
      <script src="src/contactform/contactform.js" type="text/javascript"></script>
    </head>

    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
      <!--banner-->
      <section id="banner" class="banner">
        <div class="bg-color">
          <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
              <div class="col-md-12">
                <div class="navbar-header">
                    <%@include file="WEB-INF/jspf/header.jspf"%>
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                          </button>
                  <a class="navbar-brand" href="#"><img src="img/logo.png" class="img-responsive" style="width: 140px; margin-top: -16px;"></a>
                </div>
                <div class="collapse navbar-collapse navbar-right" id="myNavbar">                     
                  <ul class="nav navbar-nav">
                    <li class="active"><a href="#banner">Home</a></li>
                    <li class=""><a href="#service">Serviços</a></li>
                    <li class=""><a href="#about">Sobre</a></li>
                    <li class=""><a href="#testimonial">Consultas</a></li>
                    <li class=""><a href="#contact">Contato</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </nav>
          <div class="container">
            <div class="row">
              <div class="banner-info">
                <div class="banner-logo text-center">
                  <img src="img/logo.png" class="img-responsive">
                </div>
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
