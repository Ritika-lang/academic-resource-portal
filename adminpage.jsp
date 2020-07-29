

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
%>
<!DOCTYPE html>
<html lang="en">
<head>
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


    <title>Admin Page</title>
</head>


<body style="background-color:#f2f2f2">


<nav class="navbar navbar-expand-lg navbar-dark text-dark fixed-top" style="width:100%;background-color:#212121">
    <img class="navbar-brand" src='./images/logo.png' style='width:30px '></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          
             
        </ul>
    </div>
  <li class="nav-item">
                <a class="nav-link" style="color:white; text-align-last:right;"href="logout.jsp">Logout</a>
            </li>             
            
</nav>

<!--Heading-->
<div class="jumbotron jumbotron-fluid" id="jumbotronSection" style="width:100%;background-color:#212121">
    <div class="container">

        <h4 class="display-4 jumbotron-mainheading"><b>Admin: Akshara Upadhyay</h4>

    </div>
</div>
<center>
<table  class="center" style="width:40%" cellpadding="6">
    <%
        try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);

        statement=connection.createStatement();
        resultSet=statement.executeQuery("select * from subject");
        if(resultSet.next()){
         %>
            <tr >
              <tr  style="background-color:#313131; color:white; font-size:26px;"><td><br></td></tr>  
            <tr style="background-color:#313131; color:white; font-size:20px;"><td ><center>Subject: <%=resultSet.getString("SubjectName")%></center></td></tr>
            <tr style="background-color:#313131; color:white; font-size:20px;"><td ><center>Course: <%=resultSet.getString("course")%>&emsp;&emsp;Year: <%=resultSet.getString("year")%></center></td></tr>
            <tr style="background-color:#313131; color:white; font-size:20px;"><td ><center>Type: <%=resultSet.getString("Type")%></center></td></tr>
            <tr style="background-color:#313131; color:white; font-size:20px;"><td style="text-align:right;"><a href="#" onclick="openPage('<%=resultSet.getString("link")%>')"><img class="navbar-brand" src="./images/download.png" style='width:40px'></a>&emsp;<a href = 'delete.jsp?id=<%=resultSet.getString("id") %>';><img class="navbar-brand" src="./images/trash.jpg" style='width:40px'></a></td></tr></td></tr>
           <tr  style="background-color:#313131; color:white; font-size:16px;"><td><br></td></tr>
            </tr>
            <tr><td><br></td></tr>
            <tr><td><br></td></tr>
            <%
        while(resultSet.next())
            {
             %>
            <tr >
              <tr  style="background-color:#313131; color:white; font-size:26px;"><td><br></td></tr>  
            <tr style="background-color:#313131; color:white; font-size:20px;"><td ><center>Subject: <%=resultSet.getString("SubjectName")%></center></td></tr>
            <tr style="background-color:#313131; color:white; font-size:20px;"><td ><center>Course: <%=resultSet.getString("course")%>&emsp;&emsp;Year: <%=resultSet.getString("year")%></center></td></tr>
            <tr style="background-color:#313131; color:white; font-size:20px;"><td ><center>Type: <%=resultSet.getString("Type")%></center></td></tr>
            <tr style="background-color:#313131; color:white; font-size:20px;"><td style="text-align:right;"><a href="#" onclick="openPage('<%=resultSet.getString("link")%>')"><img class="navbar-brand" src="./images/download.png" style='width:40px'></a>&emsp;<a href = 'delete.jsp?id=<%=resultSet.getString("id") %>';><img class="navbar-brand" src="./images/trash.jpg" style='width:40px'></a></td></tr></td></tr>
           <tr  style="background-color:#313131; color:white; font-size:16px;"><td><br></td></tr>
            </tr>
            <tr><td><br></td></tr>
            <tr><td><br></td></tr>
            <%}
            %>
            <tr><td><br></td></tr>
           <%
           }
           else
           {
            %>
            <tr>
                 <tr  style="background-color:#313131; color:white; width:50%;"><td><br></td></tr>
                  <tr  style="background-color:#313131; color:white; width:50%;"><td><h2><center>There is No Resource Available</center></h2></td></tr>    
                <tr  style="background-color:#313131; color:white; width:50%;"><td><br></td></tr>
                
                 </tr><%
           }
           }
           catch (Exception e) {
e.printStackTrace();
}
%>
 
        
   </table> 
    
</center>


</body>
</html>