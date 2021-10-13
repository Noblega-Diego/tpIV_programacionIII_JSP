<%-- 
    Document   : tabla
    Created on : 2 oct. 2021, 19:09:19
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String parmColumnas = request.getParameter("columnas");
            String parmFilas = request.getParameter("filas");
            int columnas = Integer.parseInt(parmColumnas);
            int filas = Integer.parseInt(parmFilas);
        %>
        <table>
            <%for(int i = 0; i < filas; i++){%>
            <tr>
                <%for(int c = 0; c < columnas; c++){%>
                    <td><%out.print("fila: "+(i + 1)+"  columnas:"+(c + 1));%></td>
                <%}%>
            </tr>
            <%}%>
        </table>
            
    </body>
</html>
