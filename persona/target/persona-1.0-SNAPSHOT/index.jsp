<%-- 
    Document   : index
    Created on : 3 oct. 2021, 10:49:12
    Author     : diego
--%>

<%@page import="com.fac.persona.controlador.ControlPersona"%>
<%@page import="com.fac.persona.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nueva Persona</h1>
        <form>
            <label>DNI:</label>
            <input type="text" name="dni">
            <label>nombre:</label>
            <input type="text" name="nombre">
            <label>domicilio:</label>
            <input type="text" name="domicilio">
            <button type="submit">crear</button>
        </form>
        
        <table>
            <tr>
                <th>DNI</th>
                <th>nombre</th>
                <th>domicilio</th>
            </tr>
            <% if(request.getParameter("dni")!= null &&
                    request.getParameter("nombre")!= null &&
                    request.getParameter("domicilio")!= null){
                    Persona persona = new Persona();
                    persona.setDni(request.getParameter("dni"));
                    persona.setDomicilio(request.getParameter("domicilio"));
                    persona.setNombre(request.getParameter("nombre"));
                    ControlPersona.addPersona(persona);
            %>
                <tr>
                    <td><%= persona.getDni() %></td>
                    <td><%= persona.getNombre() %></td>
                    <td><%= persona.getDomicilio() %></td>
                </tr>
            <%}%>
        </table>
        <link href="personas.jsp">ver lista</button>
    </body>
</html>
