<%-- 
    Document   : add_appointments
    Created on : Jun 24, 2018, 8:56:51 AM
    Author     : AnaBertini
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.fatecpg.trabalho.web.Appointment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    if (request.getParameter("formDeleteAppointment") != null) {
        try {
            long id = Long.parseLong(request.getParameter("id"));
            Appointment.removeAppointment(id);
            response.sendRedirect(request.getRequestURI());
        } catch (Exception e) {
            error = e.getMessage();
        }
    }
    if (request.getParameter("formNewAvailableAppointment") != null) {
        DateFormat format = new SimpleDateFormat("dd/mm/yyyy");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(request.getParameter("date"));
        long doctorID = Long.parseLong(request.getParameter("id"));
        try {
//            Appointment.addAvailableAppointment(date, doctorID);
//            response.sendRedirect(request.getRequestURI());
        } catch (Exception e) {
            error = e.getMessage();
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar consultas</title>
        <%@include file="../WEB-INF/jspf/header.jspf"%>
    </head>
    <body>
        <h1>Adicionar consultas disponíveis no canal!</h1>
        <% if (session.getAttribute("user") == null) { %>
        <h3>É preciso se logar para ver o conteúdo!</h3>
        <% } else { %>
        <% User user = (User) session.getAttribute("user"); %>
        <% if (!user.getRole().equals("medico")) { %>
        <h3>Conteúdo exclusivo para médicos cadastrados no sistema</h3>
        <% } else { %>
        <% if (error != null) {%>
        <h3><%=error%></h3>
        <%}%>
        <fieldset>
            <legend>Novo horário disponível para consulta</legend>
            <form method="post">
                Dia: <input type="date" name="date"/>
                Horário:
                <select name="role">
                    <% for (int i = 9; i <= 16; i++) {%>
                    <option value="<%=i%>"><%=i%>:00</option>
                    <% } %>
                </select>
                <input type="submit" name="formNewAvailableAppointment" value="Incluir"/>
            </form>
        </fieldset>
        <table border="1px">
            <tr>
                <th>ID</th>
                <th>Dia</th>
                <th>Horário</th>
                <th>Disponível</th>
                <th>Remover</th>
            </tr>
            <% for (Appointment a : Appointment.getAllAppointments(user.getId())) {%>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <% }%>
        </table>

        <% } %>
        <% }%>
    </body>
</html>
