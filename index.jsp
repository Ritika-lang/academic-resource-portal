<!DOCTYPE html>
<html lang="en">
<head>
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

table {

  margin-left: auto;
  margin-right: auto;

  
}
th{
top:0;
position:sticky;
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

    <title>Main Page</title>
</head>
<%String usermail=(String)session.getAttribute("login");%>

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
                <a class="nav-link" href="./upload_page.html">Upload</a>
            </li>
        <li class="nav-item">
                <a class="nav-link" href="Changepwd.html">Change Password</a>
            </li>
        <li class="nav-item">
                <a class="nav-link" href="logout.jsp">Logout</a>
            </li>
             
        </ul>
    </div>
   <li class="nav-item">
                <p class="nav-link" style="color:white; text-align-last:right;"> <%
                                                             
                  
                                                            out.println(usermail);%></p>
      </li>
    
             
            
</nav>

<!--Heading-->
<div class="jumbotron jumbotron-fluid" id="jumbotronSection" style="width:100%;background-color:#212121">
    <div class="container">

        <h2 class="display-4 jumbotron-mainheading">

            <b>Academic Resource Portal</b></h2>
        <p class="lead">Motilal Nehru National Institute of Technology, Prayagraj</p>

    </div>
</div>
<center>
 <div class="searchBar" style="width=500%">
<form action="search.jsp" method="post">

  <input list="browsers" name="search" id="search" size="50" style="font-size: 13pt; height: 42px; width:380px;"placeholder="Search By Subject Name">
  <datalist id="browsers">
    <option value="Analysis of Algorithm" selected>Analysis of Algorithm</option>
   <option value="Automata Theory" selected>Automata Theory</option>
   <option value="Computer Graphics" selected>Computer Graphics</option>
   <option value="Computer Network" selected>Computer Network</option>
   <option value="Cryptography & Networking Security" selected>Cryptography & Networking Security</option>
   <option value="Database Management System" selected>Database Management System</option>
   <option value="Data Mining" selected>Data Mining</option>
   <option value="Data Structures" selected>Data Structures</option>
   <option value="Digital & Computer Organization" selected>Digital & Computer Organization</option>
   <option value="E-Commerce" selected>E-Commerce</option>
   <option value="Foundation of Logic" selected>Foundation of Logic</option>
   <option value="Multimedia Technology" selected>Multimedia Technology</option>
   <option value="Object based Modeling" selected>Object based Modeling</option>
   <option value="Object Oriented Programming" selected>Object Oriented Programming</option>
   <option value="Operating System" selected>Operating System</option>
   <option value="Principles of IT Industries Management" selected>Principles of IT Industries Management</option>
    <option value="Professional Elective-II" selected>Professional Elective-II</option>
       <option value="Professional Elective-III" selected>Professional Elective-III</option>
   
   <option value="Professional Ethics" selected>Professional Ethics</option>
   <option value="Programming & Problem Solving" selected>Programming & Problem Solving</option>
   <option value="Shell Programming" selected>Shell Programming</option>
   <option value="Soft Computing" selected>Soft Computing</option>
   <option value="Software Engineering" selected>Software Engineering</option>
   <option value="Software Project Management" selected>Software Project Management</option>
   <option value="Technical Writing" selected>Technical Writing</option>
   <option value="XML Applications" selected>XML Applications</option>
   
   
  </datalist>
 
 <input type="submit"   style="padding: 10px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;color:white; background:#313131; border:#313131;"value="Search">
   
</form>
</div>
</center>


 <table  class="center" style="width:80%" cellpadding="50">
<tr>
<td>
    <div class="ex1">
       <table  class ="table2" style="width:100%" style="hight:100%" border=" 1px" >
       
        <th style="background:#313131;"><p><h3><center>MCA</center></h3></p></th>
         <ul class="navbar-nav mr-auto">
            <tr  bordercolor="red" onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'" >
                <td  >
                    <a class="nav-link" style="color:#313131;font-size:20px;" href="1mca.html"><center>First Year</center></a>
               </td>
            </tr>
            
            <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
                <td>
                    <a class="nav-link" style="color:#313131;font-size:20px;" href="2mca.html"><center>Second Year</center></a>
               </td>
            </tr>
            
            <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
                <td>
                    <a class="nav-link" style="color:#313131;font-size:20px;" href="3mca.html"><center>Third Year</center></a>
               </td>
            </tr>
        
        </table>
        </div>
    </td>
<td>
     <div class="ex1">
    <table class ="table2" style="width:100%" border=" 1px">
      
        <th style="background:#313131;"><p><h3><center>BTECH</center></h3></p></th>
        
        <div class="links">
         <ul class="navbar-nav mr-auto">
            <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
                <td>
                    <a class="nav-link" style="color:#313131;font-size:20px;" href="index.jsp"><center>First Year</center></a>
               </td>
            </tr>
            
            <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'" >
                <td>
                    <a class="nav-link" style="color:#313131;font-size:20px;" href="index.jsp"><center>Second Year</center></a>
               </td>
            </tr>
            
            <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
                <td>
                    <a class="nav-link" style="color:#313131;font-size:20px;" href="index.jsp"><center>Third Year</center></a>
               </td>
            </tr>
            
            <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
                <td>
                    <a class="nav-link" style="color:#313131;font-size:20px;" href="index.jsp"><center>Forth Year</center></a>
               </td>
            </tr>
        </div>
        
        </table>
        </div>
</td>

</tr>
<tr>
<td>
    <div class="ex1">
    <table  class ="table2" style="width:100%" border=" 1px">
       
        <th style="background:#313131;"><p><h3><center>MTECH</center></h3></p></th>
        <div class="links">
         <ul class="navbar-nav mr-auto">
            <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
                <td>
                    <a class="nav-link" style="color:#313131;font-size:20px;" href="index.jsp"><center>First Year</center></a>
               </td>
            </tr>
            
            <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
                <td>
                    <a class="nav-link" style="color:#313131;font-size:20px;" href="index.jsp"><center>Second Year</center></a>
               </td>
            </tr>
            </div>
        </table>
        </div>
        </td>
<td>
    <div class="ex1">
    <table class ="table2" style="width:100%" border=" 1px">
       
        <th style="background:#313131;"><p><h3><center>MBA</center></h3></p></th>
        <div class="links>
         <ul class="navbar-nav mr-auto" >
            <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
                <td>
                    <a class="nav-link" style="color:#313131;font-size:20px;" href="index.jsp"><center>First Year</center></a>
               </td>
            </tr>
            
            <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'">
                <td>
                    <a class="nav-link" style="color:#313131;font-size:20px;" href="index.jsp"><center>Second Year</center></a>
               </td>
            </tr>
            
            
        </div>
        </table>
        </div>
        </td>
</tr>

</table>



</body>
</html>
