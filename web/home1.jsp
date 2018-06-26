<%-- 
    Document   : home1
    Created on : 25/06/2018, 21:12:15
    Author     : Junior
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="pt-br">
    
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Bem Vindo</title>    
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
      <section id="banner" class="img-responsive" >
        <div class="bg-color">
          <div class="container">
            <div class="row">
              <div class="banner-info">
                <div class="banner-logo text-center">                  
                  <a class="center-block" href="#">
                      <img src="src/img/logo.png" class="img-responsive" style="width: 250px; margin-top: -250px;">
                  </a>                  
                </div>
                <div class="banner-text text-center" style= "margin-top: -75px;">                    
                    <a class="white text-center">
                        <!--Aqui colocar o usuario logado-->
                    </a>
                    
                    <h1 class="white">Seja bem vindo!!!</h1>
                    <p>Clique em ESPECIALIDADES e conheça nossos Médicos e suas Especialidades</p>
                    <p>Marque sua consulta com Médicos cadastrados, e tenha acesso a resultados de Exames.</p>
                    <div class="btn-group-justified">
                    <a href="especialidades.jsp" class="btn btn-appoint">ESPECIALISTAS</a>
                    <a href="agenda.jsp" class="btn btn-danger">AGENDA TESTE</a> 
                    </div>                    
                </div>               
              </div>
            </div>
          </div>
            <div class="banner-logo text-center" style="margin: 70px"><br>
                        <footer><%@include file="WEB-INF/jspf/footer.jspf"%></footer>
                    </div>
        </div>
      </section>
    </body>
</html>