<%-- 
    Document   : pesquisa
    Created on : Jun 23, 2018, 9:15:14 PM
    Author     : AnaBertini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisar médicos e agendar consultas</title>
    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
        <!--banner-->
        <section id="banner" class="banner">
            <div class="bg-color">
                <div class="container">
                    <div class="row">
                        <div class="banner-info">
                            <div class="banner-text text-center" style= "margin-top: -75px;">
                                <a class="white text-center">
                                  <%@include file="WEB-INF/jspf/header.jspf"%>
                                </a>                                 
                <div class="container">
                    <div class="row">
                        <div class="banner-info">
                            <div class="banner-text text-center" style="margin-top: -50px;">
                                <h1 class="white text-center">Pesquisar médicos!</h1>
                                <div>
                                    <p>CONSULTAR:</p><input placeholder="CONSULTAS / MÈDICOS"/><br>
                                <button class="btn btn-appoint">SALVAR</button>
                                </div>
                            </div>               
                        </div>
                    </div>
                </div>
            </div>
                        </div>
                <div class="banner-logo text-center center-block" style="margin-top: 105px;"><br>
                    <footer><%@include file="WEB-INF/jspf/footer.jspf"%></footer>
                </div>
        </section>
    </body>
</html>
