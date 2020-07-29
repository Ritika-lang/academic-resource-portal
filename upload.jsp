
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
try
{
String LINK=request.getParameter("file");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject", "root", "password");
PreparedStatement ps=null;

String sub=request.getParameter("subject_name"); 


  ps=conn.prepareStatement("insert into subject(Link,SubjectName,course,Type,year) value (?,?,?,?,?)");

    
  ps.setString(1,LINK);
  ps.setString(2,sub );
  ps.setString(3,request.getParameter("course") );
  ps.setString(4,request.getParameter("type") );
  ps.setString(5,request.getParameter("year") );
   int x=ps.executeUpdate();  
          if(x>0){
          %> <script> alert("Uploaded Sucessfully");
       window.location.href= "index.jsp";
     </script>
    <%
    }
          else{
          %> <script> alert("Not Uploaded!! Try Again");
       window.location.href= "upload_page.html";
     </script>
    <%
          }
    }
    
      catch(Exception e){
        System.out.println(e);
        }
    

%>   