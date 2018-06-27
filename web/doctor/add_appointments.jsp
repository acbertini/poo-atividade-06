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
                                <br/>
                                <% if (session.getAttribute("user") == null) { %>
                                <h3 class="white">É preciso se logar para ver o conteúdo!</h3>
                                <% } else { %>
                                <% User user = (User) session.getAttribute("user"); %>
                                <% if (!user.getRole().equals("medico")) { %>
                                <h3>Conteúdo exclusivo para médicos cadastrados no sistema</h3>
                                <% } else { %>
                                <% if (error != null) {%>
                                <h3><%=error%></h3>
                                <%}%>
                                <br/>
                                <h3 class="white">Adicionar horario de consulta</h3>
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
                                <!--
                            <table class="table-bordered">
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
                                -->
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
