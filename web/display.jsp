<%-- 
    Document   : display
    Created on : Jun 19, 2024, 12:02:43 AM
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
        BrInd: <jsp:getProperty name="stud" property="brind"/>
        <br/>Enter Name: <jsp:getProperty name="stud" property="name"/> 
        <br/>Enter Course: <jsp:getProperty name="stud" property="course"/>
    </body>
</html>
