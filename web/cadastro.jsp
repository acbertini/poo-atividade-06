<%-- 
    Document   : cadastro
    Created on : 21/06/2018, 22:51:24
    Author     : Junior
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bem vindo</title>
    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
        <!--banner-->
        <section id="banner" class="banner">
            <div class="bg-color">
                <div class="container">
                    <div class="row">
                        
                                <a class="white text-center">
                                    <%@include file="WEB-INF/jspf/header.jspf"%>
                                </a>
                            </div>
                                <div class="container">
                                    <div class="row">
                                        <div class="banner-info">
                                            <div class="banner-text text-center" style= "margin-top: -25px;">
                                                <h1 class="white">Insira seus dados para cadastro</h1>
                         <form action="" method="post" role="form" class="contactForm">
                         <div class="form-group">
                            <input type="text" name="name" class="form-control br-radius-zero" id="name" placeholder="Digite seu Nome" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
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
            <div class="banner-logo text-center" style="margin: 30px"><br>
                <footer><%@include file="WEB-INF/jspf/footer.jspf"%></footer>
            </div>
        </div>
      </section>
    </body>
</html>