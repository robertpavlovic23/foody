<%-- 
    Document   : unos
    Created on : Jun 19, 2024, 8:42:07 PM
    Author     : Aisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String marka = (String) request.getAttribute("marka");
    String cena = (String) request.getAttribute("cena");
    String godiste = (String) request.getAttribute("godiste");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Unos stranica</h1>
        <form name="myform" action="ServletAuto" method="post">
            <table>
                <tr>
                    <th height="25">
                    <td align="right" width="20%"> MARKA : </td>
                    <%
                        if (marka != null && marka.length() > 0) {
                    %>
                    <td><input type="text" name="marka" value="<%= marka%>"></td>
                    <% 
                        } else {
                    %>
                    <td><input type="text" name="marka"></td>
                    <% 
                        }
                    %>
                </tr>
                <tr>
                    <th height="25">
                    <td align="right" width="20%"> CENA : </td>
                    <%
                        if (cena != null && cena.length() > 0) {
                    %>
                    <td><input type="text" name="marka" value="<%= cena%>"></td>
                    <% 
                        } else {
                    %>
                    <td><input type="text" name="cena"></td>
                    <% 
                        }
                    %>
                </tr>
                <tr>
                    <th height="25">
                    <td align="right" width="20%"> GODISTE : </td>
                    <td><input type="text" name="godiste"></td>
                </tr>
                <tr>
                    <th height="25">
                    <td align="center" width="20%" colspan="2">
                        <input type="submit" name="akcija" value="UNOS"></td>
                </tr>
                <tr>
                    <th height="25">
                    <td colspan="2">
                        <a href="index.jsp"> pocetna </a></td>
                </tr>
                <%
                    String msg = (String) request.getAttribute("msg");
                    if (msg != null && msg.length() > 0) {
                %>
                <tr>
                    <td colspan="2"><%= msg%></td>
                </tr>
                <%
                    }
                %>
            </table>
        </form>
    </body>
</html>
