<%-- 
    Document   : brojac1
    Created on : Jun 19, 2024, 1:57:05 PM
    Author     : Aisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Brojac 3</title>
    </head>
    <body>
        <h1>Brojac 3</h1>
        <jsp:useBean id="counter" class="beans.AccessCountBeans" scope="application">
            <jsp:setProperty name="counter" property="firstPage" value="brojac3.jsp"/>
        </jsp:useBean>
        Postoje veb strane: brojac3.jsp (ova strana),
        <a href="brojac1.jsp">brojac1.jsp</a>, i
        <a href="brojac2.jsp">brojac2.jsp</a>
        <br/>
        Veb strani <jsp:getProperty name="counter" property="firstPage"/>
        je prvi put pristupano.
        <p>
            Ukupno je svim stranicama pristupano:
            <jsp:getProperty name="counter" property="accessCount"/>
            . puta.
            <jsp:setProperty name="counter" property="accessCount" value="1"/>
        </p>
    </body>
</html>
