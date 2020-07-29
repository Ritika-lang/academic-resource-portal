<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
try
{
String EMAIL=request.getParameter("email");
String PASS=request.getParameter("password");
if(EMAIL.equals("aksharaupadhyay2@gmail.com") && PASS.equals("Akshara@9627"))
{
    response.sendRedirect("adminpage.jsp");
}
else
{
    %> <script> alert("Invalid Admin Email or password");
    window.location.href= "home.html";</script>
         <%
}
}
 catch (Exception e) {
e.printStackTrace();
}

%>   