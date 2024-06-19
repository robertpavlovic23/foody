<%-- 
    Document   : first
    Created on : Jun 19, 2024, 12:00:46 AM
    Author     : Aisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="stud" scope="request" class="beans.StudentBean"/>
        <jsp:setProperty name="stud" property="*"/>
        <jsp:forward page="display.jsp"/>
    </body>
</html>
