
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","password");
    String TYPE,NAME,EMAIL,PWD,PHONE,DBEMAIL;
    
    NAME=request.getParameter("name");
    EMAIL=request.getParameter("email");
    PWD=request.getParameter("pwd");
    PHONE=request.getParameter("phone");
    
    PreparedStatement ps=null,psf=null;
    
    psf=conn.prepareStatement("select * from faculty where email=? ");
    
    psf.setString(1,EMAIL);
   
    ResultSet rsf=psf.executeQuery();
      ps=conn.prepareStatement("insert into users(type,email,name,password,mobile_no) values(?,?,?,?,?)");
    if(rsf.next())
    {
        DBEMAIL=rsf.getString("email");
        if(EMAIL.equals(DBEMAIL) )
        {
        ps.setString(1,"F");
        }
    
    
    }
    else
    
    {
            
            ps.setString(1,"S");
    }
    
  
   
    ps.setString(2,EMAIL);
    ps.setString(3,NAME);
    ps.setString(4,PWD);
    ps.setString(5,PHONE);
    
    int x=ps.executeUpdate();
    
    if(x>0)
    {
    %> <script> alert("REGISTERED SUCESSFULLY");
     window.location.href= "home.html";</script>
    <%
    }
    else
    {
    %> <script> alert("REGISTERED FAILED");
     </script>
    <%
    }
    }
    catch(Exception e)
    {
    System.out.println(e);
    }
    %>
    
