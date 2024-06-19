<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ValidacijaKarteServlet" method="POST">
            <table>
                <tr>
                    <td>IME I PREZIME:</td>
                    <td><input type="text" name="ime"></td>
                </tr>
                <tr>
                    <td>DESTINACIJA:</td>
                    <td><input type="text" name="destinacija"></td>
                </tr>
                <tr>
                    <td>Datum:</td>
                    <td><input type="text" name="datum"></td>
                </tr>
                <tr>
                    <td>CENA:</td>
                    <td><input type="text" name="cena"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="akcija" value="Kupi kartu"></td>
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
