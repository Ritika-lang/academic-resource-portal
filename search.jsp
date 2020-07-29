
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject", "root", "password");
PreparedStatement ps=null;

String sub=request.getParameter("search"); 

if(sub.equals("Analysis of Algorithms")){


  }
    else if (sub.equals("Automata Theory")){
    %> <script>
       window.location.href= "automata.jsp";
     </script> <%

    }
      else if (sub.equals("Computer Graphics")){
%> <script>
       window.location.href= "cg.jsp";
     </script> <%

    } 
    else if (sub.equals("Computer Network")){
%> <script>
       window.location.href= "cn.jsp";
     </script> <%

    } 
     else if (sub.equals("Cryptography & Networking Security")){
%> <script>
       window.location.href= "cnn.jsp";
     </script> <%

    } 
    else if (sub.equals("Database Management System")){
%> <script>
       window.location.href= "dbms.jsp";
     </script> <%

    }
    else if (sub.equals("Data Mining")){

 %> <script>
       window.location.href= "dm.jsp";
     </script> <%
    }
    else if (sub.equals("Data Structures")){
    %> <script>
       window.location.href= "ds.jsp";
     </script> <%

 
    }
    else if (sub.equals("Digital & Computer Organization")){
%> <script>
       window.location.href= "dco.jsp";
     </script> <%
 
    }
    else if (sub.equals("E-Commerce")){
    %> <script>
       window.location.href= "ecom.jsp";
     </script> <%

 
    }
    else if (sub.equals("Foundation of Logic")){
%> <script>
       window.location.href= "fol.jsp";
     </script> <%
    }
    
    else if (sub.equals("Multimedia Technology")){

 %> <script>
       window.location.href= "mt.jsp";
     </script> <%
    }
    else if (sub.equals("Object Oriented Programming")){
%> <script>
       window.location.href= "oops.jsp";
     </script> <%
 
    }
    else if (sub.equals("Object based Modeling")){

  %> <script>
       window.location.href= "obm.jsp";
     </script> <%
    }
    else if (sub.equals("Operating System")){
     %> <script>
       window.location.href= "os.jsp";
     </script> <%
 
    }
    else if (sub.equals("Principles of IT Industries Management")){

 %> <script>
       window.location.href= "it.jsp";
     </script> <%
    }
     else if (sub.equals("Professional Elective-II")){

     %> <script>
       window.location.href= "peii.jsp";
     </script> <%
    }
     else if (sub.equals("Professional Elective-III")){

     %> <script>
       window.location.href= "peiii.jsp";
     </script> <%
    }
    else if (sub.equals("Professional Ethics")){

     %> <script>
       window.location.href= "profe.jsp";
     </script> <%
    }
    else if (sub.equals("Programming & Problem Solving")){
 %> <script>
       window.location.href= "clang.jsp";
     </script> <%

    }
    else if (sub.equals("Shell Programming")){
 %> <script>
       window.location.href= "shell.jsp";
     </script> <%
    }
    else if (sub.equals("Soft Computing")){
     %> <script>
       window.location.href= "sc.jsp";
     </script> <%

 
    }
    else if (sub.equals("Software Engineering")){
 %> <script>
       window.location.href= "se.jsp";
     </script> <%
 
    }
      else if (sub.equals("Software Project Management")){
       %> <script>
       window.location.href= "spm.jsp";
     </script> <%

 
    }
      else if (sub.equals("Technical Writing")){
     %> <script>
       window.location.href= "tech.jsp";
     </script> <%
 
    }
      else if (sub.equals("XML Applications")){

        %> <script>
       window.location.href= "xml.jsp";
     </script> <%
    }
      else{

        %> <script> alert("Subject Name Not found!! Try again");
       window.location.href= "index.jsp";
     </script> <%
    }
    
  
    }
    
      catch(Exception e){
        System.out.println(e);
        }
    

%>   