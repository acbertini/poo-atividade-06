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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agendamento</title>
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
                                <h1 class="white">Sua agenda de consultas!</h1>
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
                        </div>                                
                        </div>               
                        </div>
                    </div>
                </div>
            <div class="banner-logo text-center center-block" style="margin-top: -85px;"><br>
                <footer><%@include file="WEB-INF/jspf/footer.jspf"%></footer>
            </div>            
        </section>  
    </body>
</html>
