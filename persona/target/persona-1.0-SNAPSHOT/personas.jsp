<%-- 
    Document   : personas
    Created on : 3 oct. 2021, 13:43:29
    Author     : diego
--%>

<%@page import="com.fac.persona.modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page import="com.fac.persona.controlador.ControlPersona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="0">
            <thead>
                <tr>
                    <th>DNI</th>
                    <th>Nombre</th>
                    <th>Domicilio</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Persona> personas = ControlPersona.getPersonas();
                    for (Persona persona : personas) {
                %>
                    <tr>
                        <td><%= persona.getDni() %></td>
                        <td><%= persona.getNombre() %></td>
                        <td><%= persona.getDomicilio() %></td>
                    </tr>
                <%}%>
            </tbody>
        </table>

    </body>
</html>
