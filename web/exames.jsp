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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados de exames</title>
        <%@include file="WEB-INF/jspf/header.jspf"%>
    </head>
    <body>
        <h1>Resultados de exames!</h1>
        <br/>
        <% if (session.getAttribute("user") == null) { %>
        <h3>É preciso se logar para ver o conteúdo!</h3>
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
    </body>
</html>
