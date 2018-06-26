    <%-- 
        Document   : index
        Created on : Jun 10, 2018, 10:04:55 AM
        Author     : AnaBertini
    --%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="pt-br">
    
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
          <div class="container">
            <div class="row">
              <div class="banner-info">
                <div class="banner-logo text-center">                  
                  <a class="center-block" href="#">
                      <img src="src/img/logo.png" class="img-responsive" style="width: 250px; margin-top: -250px;">
                  </a><br>                  
                </div>
                <div class="banner-text text-center" style= "margin-top: -75px;">
                    <a class="white text-center">
                      <%@include file="WEB-INF/jspf/header.jspf"%>
                    </a>                    
                    <h1 class="white"> Ainda não tem conta?</h1>
                    <h1 class="white">Cadastre-se</h1>
                    <a href="home1.jsp" class="btn btn-appoint">CADASTRE-SE</a>                 
                </div>               
              </div>
            </div>
          </div>
                    <div class="banner-logo text-center center-block" style="margin-top: 20px;"><br>
                      <footer><%@include file="WEB-INF/jspf/footer.jspf"%></footer>
                    </div>
        </div>
      </section>
    </body>
</html>
