<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String currentPassword=request.getParameter("pwd");
String Newpass=request.getParameter("npwd");
String conpass=request.getParameter("rnpwd");
String EMAIL=request.getParameter("email");
String connurl = "jdbc:mysql://localhost:3306/miniproject";
Connection con=null;
String pass="";
int id=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "password");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from users where email='"+EMAIL+"' and password='"+currentPassword+"'");
if(rs.next()){
if(Newpass.equals(conpass)){
 pass=rs.getString("password");
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update users set password='"+Newpass+"' where email='"+EMAIL+"'");
response.sendRedirect("index.jsp");
}
else{
%><script>
alert("Invalid Current Password");
window.location.href ="Changepwd.html";
</script>
<%
}
}
else
{
%><script>
alert("New password does not match");
window.location.href ="Changepwd.html";
</script><%
}
}
else
{
%><script>
alert("SomeThing wrong! Please try Again");
window.location.href ="Changepwd.html";

 </script><%   
}
}
catch(Exception e){
out.println(e);
}
%>
