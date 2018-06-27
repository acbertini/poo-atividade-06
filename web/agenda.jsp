<%-- 
    Document   : agenda
    Created on : Jun 23, 2018, 1:12:51 PM
    Author     : AnaBertini
--%>

<%@page import="br.com.fatecpg.trabalho.web.Appointment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda de consultas</title>
        <%@include file="WEB-INF/jspf/header.jspf"%>
    </head>
    <body>
        <h1>Sua agenda de consultas!</h1>
        <br/>
        <% if (session.getAttribute("user") == null) { %>
        <h3>É preciso se logar para ver o conteúdo!</h3>
        <% } else { %>
        <% User user = (User) session.getAttribute("user"); %>
        <% if (!user.getRole().equals("medico") || user.getRole().equals("MEDICO") ) { %>
        <h3>Conteúdo exclusivo para médicos do sistema</h3>
        <% } else { %>
        <% if (error != null) {%>
        <h3><%=error%></h3>
        <%}%>
        <table border="1px">
            <tr>
                <th>Cod consulta</th>
                <th>Paciente</th>
                <th>Data</th>
            </tr>
            <% for (Appointment a : Appointment.getAllAppointments(user.getId())) {%>
            <tr>
                <td><%= a.getId()  %></td>
                <td>Inserir nome</td>
                <td><%= a.getDate_appointment() %></td>
            </tr>
            <% } %>
        </table>
        <% } %>
        <% }%>
  <script src="js/jquery.min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/custom.js"></script>
  <script src="contactform/contactform.js"></script>

    </body>
</html>
