<%-- 
    Document   : index
    Created on : 2 oct. 2021, 17:59:18
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva pagina</title>
        <link href="styles/style.css">
    </head>
    <body>
        <form action="tabla.jsp">
            <label for="in_filas">Filas:</label>
            <input type="text" name="filas" id="in_filas">
            <label for="in_columnas">Columnas:</label>
            <input type="text" name="columnas" id="in_columnas">
            <button type="submit">enviar</button>
        </form>
    </body>
</html>
