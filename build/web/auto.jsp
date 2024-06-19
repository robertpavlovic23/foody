<%-- 
    Document   : auto
    Created on : Jun 19, 2024, 8:53:46 PM
    Author     : Aisha
--%>

<%@page import="beans.Auto"%>
<%
    Auto auto = (beans.Auto)request.getAttribute("auto");
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Auto</title>
    </head>
    <body>
        <table width="40%" align="center">
            <tr>
                <td colspan="3" align="center"> PODACI O AUTOMOBILU </td>
            </tr>
            <tr align="center">
                <td>MARKA</td>
                <td>CENA</td>
                <td>GODISTE</td>
            </tr>
            <tr align="center">
                <td><%= auto.getMarka() %></td>
                <td><%= auto.getCena() %></td>
                <td><%= auto.getGodiste() %></td>
            </tr>
        </table>
    </body>
</html>
