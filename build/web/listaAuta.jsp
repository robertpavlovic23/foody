<%-- 
    Document   : listaAuta
    Created on : Jun 19, 2024, 8:59:03 PM
    Author     : Aisha
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Auto" %>
<%
    ArrayList<Auto> listAuto = (ArrayList<Auto>)request.getAttribute("listaAuta");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Auto lista</title>
    </head>
    <body>
        <table width="40%" align="center">
            <tr>
                <td colspan="3" align="center">PODACI O AUTOMOBILIMA</td>
            </tr>
            <tr align="center">
                <td>MARKA</td>
                <td>CENA</td>
                <td>GODISTE</td>
            </tr>
            <%
                for(Auto pom : listAuto) {
            %>
            <tr align="center">
                <td><%= pom.getMarka() %></td>
                <td><%= pom.getCena() %></td>
                <td><%= pom.getGodiste() %></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
