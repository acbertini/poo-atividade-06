<%-- 
    Document   : cadastro
    Created on : 21/06/2018, 22:51:24
    Author     : Junior
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Cadastro</title> 
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
            <div class="container">
              <div class="col-md-12">
                <div class="navbar-header">
                
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                          </button>
                  <a class="navbar-brand" href="#"><img src="src/img/logo.png" class="img-responsive" style="width: 140px; margin-top: -16px;"></a>                  
                </div>
                <div class="collapse navbar-collapse navbar-right" id="myNavbar">                     
                  <ul class="nav navbar-nav">
                    <li class="active"><a href="#home1">Home</a></li>
                    <li class=""><a href="#exame">Exames</a></li>
                    <li class=""><a href="#especialidade">Especialidades</a></li>
                    <li class=""><a href="#consulta">Consultas</a></li>
                    <li class=""><a href="#cadastro">Cadastro</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </nav>
          <div class="container">
            <div class="row">
              <div class="banner-info">                
                    <div class="banner-text text-center">
                        <h1 class="white">Insira seus dados para cadastro</h1>
             
            <form action="" method="post" role="form" class="contactForm">
              <div class="form-group">
                <input type="text" name="name" class="form-control br-radius-zero" id="name" placeholder="Digite seu Nome" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <input type="email" class="form-control br-radius-zero" name="email" id="email" placeholder="Digite seu Email" data-rule="email" data-msg="Please enter a valid email" />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control br-radius-zero" name="subject" id="subject" placeholder="Digite seu endereço" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control br-radius-zero" name="subject" id="subject" placeholder="Digite a especialidade procurada"></>
              </div>
              <div class="form-action">
                <a href="#contact" class="btn btn-appoint">SALVAR</a>
              </div>
            </form>
            </div>
            </div>                 
            </div>   
            </div>
        </div>
      </section>
    </body>
</html>