

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String idx;
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "miniproject";
String userId = "root";
String password = "password";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%><!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
    tr { background-color:#f0f0f0}
  .normal { background-color: #f0f0f0}
  .highlight { background-color: white }
    div.ex1 {
  width: 500px;
  height: 240px;
  overflow: scroll;
  margin-top:20px;
}

table.center {
  margin-left: 100px;
  margin-right: auto;

  
}
th.th1{
top:0;
position:sticky;
}
.table2 {
  border-collapse: separate;
  border-spacing: 15px;
  border-color: white;
  
}
.button {
  background-color: white; 
  border: none;
  color: black;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 25.3px;
  margin: 0px 0px;
  cursor: pointer;
  height: 60px;
  width: 280px;
  
}
.button1 {
  background-color: white; 
  color: black; 
}

.button1:hover {
  background-color: skyblue;
  color: white;
}
.table2 {
  border-collapse: separate;
  border-spacing: 15px;
  border-color: white;
  
}

    </style>

</style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--jQuery-->
    
    <!-- added logo in title -->
    <link rel="shortcut icon" type="./image/x-icon" href="./views/Images/collegelogo.png"/>

    <!-- Model Imports -->
    
    <!-- Controller Imports -->
    
    <!-- Search Bar imports -->
    <link rel="stylesheet" type="text/css" href="./views/SearchBar/searchBar.css">
     <link rel="stylesheet" type="text/css" href="./css/dots.css">
    
    <!-- Branch Template Propagation Imports -->
    <link rel="stylesheet" type="text/css" href="./views/template/Template.css">
   
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="./views/style.css" type="text/css">
<script type="text/javascript">
 function openPage(pageURL)
 {
 window.location.href = pageURL;
 }
</script>

    <title>DBMS</title>
</head>

<body style="background-color:#f2f2f2">


<nav class="navbar navbar-expand-lg navbar-dark text-dark fixed-top" style="width:100%;background-color:#212121">
    <a href="./index.jsp"> <img class="navbar-brand" src='./views/Images/collegelogo.png' style='width:30px '></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <img src="./views/Images/Hamburger.png" class="flexright" style='width:20px'>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="./index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="upload_page.html">Upload</a>
            </li>
        <li class="nav-item">
                <a class="nav-link" href="Changepwd.html">Change Password</a>
            </li>
        <li class="nav-item">
                <a class="nav-link" href="logout.jsp">Logout</a>
            </li>
             
        </ul>
    </div>
   
             
            
</nav>

<!--Heading-->
<div class="jumbotron jumbotron-fluid" id="jumbotronSection" style="width:100%;background-color:#212121">
    <div class="container" style="color:white;">

        <h2 class="display-4 jumbotron-mainheading">

            <b>Resources </b></h2>
        <p class="lead">Motilal Nehru National Institute of Technology, Prayagraj</p>

    </div>
</div>



 <table  class="center" style="width:100%" cellpadding="50">
<tr>
<td>
    <div class="ex1">
    <table  class ="table2" style="width:100%" style="hight:100%" border=" 2px" >
    <th  class ="th1" style="background:#313131; color:white;"><p><h3><center>Midsem Exam paper</center></h3></p></th>
         <ul class="navbar-nav mr-auto">
             <%
        try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        resultSet=statement.executeQuery("select * from subject where type='midsem' and SubjectName='Database Management System'");
        while(resultSet.next())
            {
             %><tr bordercolor="red" onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
         <td style="color:#313131;font-size:20px;height:50px;width:200px"><center><b><%=resultSet.getString("course")%> - <%=resultSet.getString("year")%></b>
     <button onclick="openPage('<%=resultSet.getString("link")%>')"><i class="fa fa-download"></i></button></td></tr>
       <%     }

} catch (Exception e) {
e.printStackTrace();
}
%>

            
                    
        </table>
        </div>
    </td>
    
    
    
<td>
     <div class="ex1">
       
    <table  class ="table2" style="width:100%" style="hight:100%" border=" 2px" >
            <th class ="th1" style="background:#313131; color:white;"><p><h3><center>Endsem Exam paper</center></h3></p></th>

         <ul class="navbar-nav mr-auto">
             <%
        try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        resultSet=statement.executeQuery("select * from subject where type='endsem' and SubjectName='Database Management System'");
        while(resultSet.next())
            {
             %><tr bordercolor="red" onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
         <td style="color:#313131;font-size:20px;height:50px;width:200px"><center><b><%=resultSet.getString("course")%> - <%=resultSet.getString("year")%></b>
     <button onclick="openPage('<%=resultSet.getString("link")%>')"><i class="fa fa-download"></i></button></td></tr>
     <%     }

} catch (Exception e) {
e.printStackTrace();
}
%>

            
                    
        </table>
        </div>
    </td>
    

</tr>
<tr>
<td>
     <div class="ex1">
       
    <table  class ="table2" style="width:100%" style="hight:100%" border=" 2px" >
            <th class ="th1" style="background:#313131; color:white;"><p><h3><center>Tutorials</center></h3></p></th>

         <ul class="navbar-nav mr-auto">
             <%
        try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        resultSet=statement.executeQuery("select * from subject where type='Tutorial' and SubjectName='Database Management System'");
        while(resultSet.next())
            {
             %><tr bordercolor="red" onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
         <td style="color:#313131;font-size:20px;height:50px;width:200px"><center><b><%=resultSet.getString("course")%> - <%=resultSet.getString("year")%></b>
     <button onclick="openPage('<%=resultSet.getString("link")%>')"><i class="fa fa-download"></i></button></td></tr>
     <%     }
     
} catch (Exception e) {
e.printStackTrace();
}
%>

            
                    
        </table>
        </div>
    </td>
    
<td>
    <div class="ex1">
       
    <table  class ="table2" style="width:100%" style="hight:100%" border=" 2px" >
            <th class ="th1" style="background:#313131; color:white;"><p><h3><center>Quiz</center></h3></p></th>

         <ul class="navbar-nav mr-auto">
             <%
        try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        resultSet=statement.executeQuery("select * from subject where type='Quiz' and SubjectName='Database Management System'");
        while(resultSet.next())
            {
             %><tr bordercolor="red" onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
         <td style="color:#313131;font-size:20px;height:50px;width:200px"><center><b><%=resultSet.getString("course")%> - <%=resultSet.getString("year")%></b>
     <button onclick="openPage('<%=resultSet.getString("link")%>')"><i class="fa fa-download"></i></button></td></tr>
     <%     }

} catch (Exception e) {
e.printStackTrace();
}
%>

            
                    
        </table>
        </div>
    </td>
    </tr>

</table>



</body>
</html>
