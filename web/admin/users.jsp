<%-- 
    Document   : users
    Created on : Jun 23, 2018, 2:18:54 PM
    Author     : AnaBertini
--%>

<%@page import="br.com.fatecpg.trabalho.web.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controle de Usuários</title>
        <%@include file="../WEB-INF/jspf/header.jspf"%>
    </head>
    <body>
        <h1>Usuários!</h1>
        <% if (session.getAttribute("user") == null) { %>
        <h3>É preciso se logar para ver o conteúdo!</h3>
        <% } else { %>
        <% User user = (User) session.getAttribute("user"); %>
        <% if (!user.getRole().equals("ADMIN")) { %>
        <h3>Conteúdo exclusivo para admin do sistema</h3>
        <% } else { %>
        <table border="1px">
            <tr>
                <th>ID</th>
                <th>Papel</th>
                <th>Nome</th>
                <th>Login</th>
            <tr>
            <% for(User u: User.getUsers()){ %>
            <tr>
                <td><%=u.getId()%></td>
                <td><%=u.getRole()%></td>
                <td><%=u.getName()%></td>
                <td><%=u.getLogin()%>
            </tr>
            <% } %>
        </table>
        <% } %>
        <% }%>
    </body>
</html>
