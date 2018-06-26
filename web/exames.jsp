<%-- 
    Document   : exames
    Created on : Jun 23, 2018, 9:02:39 PM
    Author     : AnaBertini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
%>
<html lang="pt-br">
    
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Resultados de exames</title>    
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
                      <img src="src/img/logo.png" class="img-responsive" style="width: responsive; margin-top: -250px;">
                  </a>                  

        
        <h1 class="white">Resultados de exames!</h1>
        <br/>
        <% if (session.getAttribute("user") == null) { %>
        <h3 class="white">É preciso se logar para ver o conteúdo!</h3>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <% } else { %>
        <% User user = (User) session.getAttribute("user"); %>
        <% if (!user.getRole().equals("paciente") || user.getRole().equals("PACIENTE") ) { %>
        <h3>Conteúdo exclusivo para pacientes cadastrados</h3>
        <% } else { %>
        <% if (error != null) {%>
        <h3><%=error%></h3>
        <%}%>
        <%}%>
        <%}%>
        
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
