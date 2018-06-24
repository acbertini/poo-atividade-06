<%-- 
    Document   : users
    Created on : Jun 23, 2018, 2:18:54 PM
    Author     : AnaBertini
--%>

<%@page import="br.com.fatecpg.trabalho.web.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    if (request.getParameter("formDeleteUser") != null) {
        try {
            long id = Long.parseLong(request.getParameter("id"));
            User.removeUser(id);
            response.sendRedirect(request.getRequestURI());
        } catch (Exception e) {
            error = e.getMessage();
        }
    }
    if (request.getParameter("formNewUser") != null) {
        String role = request.getParameter("role");
        String name = request.getParameter("name");
        String login = request.getParameter("login");
        long hash = request.getParameter("pass").hashCode();
        try {
            User.addUser(role, name, login, hash);
            response.sendRedirect(request.getRequestURI());
        } catch (Exception e) {
            error = e.getMessage();
        }
    }
%>
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
        <% if (!user.getRole().equals("admin")) { %>
        <h3>Conteúdo exclusivo para admin do sistema</h3>
        <% } else { %>
        <% if (error != null) {%>
        <h3><%=error%></h3>
        <%}%>
        <fieldset>
            <legend>Novo usuário</legend>
            <form method="post">
                Nome: <input type="text" name="name"/>
                Papel:
                <select name="role">
                    <option value="admin">admin</option>
                    <option value="paciente">paciente</option>
                    <option value="medico">medico</option>
                </select>
                Login: <input type="text" name="login"/>
                Pass: <input type="password" name="pass"/>
                <input type="submit" name="formNewUser" value="Add"/>
            </form>
        </fieldset>
        <br/>
        <%@include file="../WEB-INF/jspf/form_doctor.jspf"%>
        <br/>
        <table border="1px">
            <tr>
                <th>ID</th>
                <th>Papel</th>
                <th>Nome</th>
                <th>Login</th>
                <th>Excluir</th>
            </tr>
            <% for (User u : User.getUsers()) {%>
            <tr>
                <td><%=u.getId()%></td>
                <td><%=u.getRole()%></td>
                <td><%=u.getName()%></td>
                <td><%=u.getLogin()%></td>
                <td>
                    <form>
                        <input type="hidden" name="id" value="<%=u.getId()%>"/>
                        <input type="submit" name="formDeleteUser" value="Remover"/>
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
        <% } %>
        <% }%>
    </body>
</html>
