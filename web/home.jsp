<%-- 
    Document   : index
    Created on : Jun 10, 2018, 10:04:55 AM
    Author     : AnaBertini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>   
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
        <!--banner-->
        <%if (session.getAttribute("user") == null) {%>
        <section id="banner" class="banner">
            <div class="bg-color">
                <div class="container">
                    <div class="row">
                        <div class="banner-info">
                            <div class="banner-text text-center" style= "margin-top: -75px;">
                                <a class="white text-center">
                                    <%@include file="WEB-INF/jspf/header.jspf"%>
                                </a>                                 
                                <% if (session.getAttribute("user") == null) { %>                    
                                <h1 class="white" style="margin-top: 120px;"> Ainda não tem conta?</h1>
                                <h1 class="white">Cadastre-se</h1>
                                <a href="cadastro.jsp" class="btn btn-appoint">CADASTRE-SE</a>  
                                <% }%>
                            </div>                                
                        </div>               
                    </div>
                </div>
            </div>
            <div class="banner-logo text-center center-block" style="margin-top: -75px;"><br>
                <footer><%@include file="WEB-INF/jspf/footer.jspf"%></footer>
            </div>            
        </section>
            <%} else {%>
            <section id="banner" class="banner">
            <div class="bg-color">
                <div class="container">
                    <div class="row">
                        <div class="banner-info">
                            <div class="banner-text text-center" style= "margin-top: -75px;">
                                <a class="white text-center">
                                    <%@include file="WEB-INF/jspf/header.jspf"%>
                                </a>                                 
                </div>
                <div class="banner-text text-center">                    
                    <a class="white text-center">
                        <!--Aqui colocar o usuario logado-->
                    </a>
                    
                    <h1 class="white" style="margin-top: 90px;">Seja bem vindo!!!</h1>
                    <p>Clique em ESPECIALIDADES e conheça nossos Médicos e suas Especialidades</p>
                    
                    <div id="texto">Marque sua consulta com Médicos cadastrados.</div>

                     <img src="src/img/doctor2.jpg" alt="" width="150" height="100"/>
                     <img src="src/img/doctor3.jpg" alt="" width="150" height="100"/>
                    <div class="btn-group-justified" style= "width:responsive; margin-top: 40px;">
                    <a href="especialidades.jsp" class="btn btn-appoint">ESPECIALISTAS</a>
                    
                    <a href="agenda.jsp" class="btn btn-danger">AGENDE SUA CONSULTA</a> 
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
            <%}%>
    </body>
</html>
