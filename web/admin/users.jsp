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
    if (request.getParameter("formNewDoctor") != null) {
        String role = "medico";
        String name = request.getParameter("name");
        int especialidade = Integer.parseInt(request.getParameter("type"));
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
                                    <%@include file="header.jspf"%>
                                </a>  
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
                                        </select>
                                        Login: <input type="text" name="login"/>
                                        Pass: <input type="password" name="pass"/>
                                        <input type="submit" name="formNewUser" value="Add"/>
                                    </form>
                                </fieldset>
                                <br/>
                                <fieldset>
                                    <legend>Novo médico</legend>
                                    <form method="post">
                                        Nome: <input type="text" name="name"/>
                                        Especialidade:
                                        <select name="type">
                                            <option value="1">Cardiologista</option>
                                            <option value="2">Clínico geral</option>
                                            <option value="3">Dermatologista</option>
                                            <option value="4">Pediatra</option>
                                        </select>
                                        Login: <input type="text" name="login"/>
                                        Pass: <input type="password" name="pass"/>
                                        <input type="submit" name="formNewDoctor" value="Add"/>
                                    </form>
                                </fieldset>
                                <br/>
                                <table class="table table-bordered">
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
                            </div>                                
                        </div>               
                    </div>
                </div>
            </div>
            <div class="banner-logo text-center center-block" style="margin-top: -75px;"><br>
                <footer><%@include file="../WEB-INF/jspf/footer.jspf"%></footer>
            </div>            
        </section>  
    </body>
</html>
