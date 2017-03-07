<%-- 
    Document   : index
    Created on : Feb 5, 2017, 9:54:47 AM
    Author     : USER
--%>

<%@page import="java.util.concurrent.TimeUnit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<center>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Value insert</title>
        <link rel="stylesheet" type="text/css" href="theme.css">
        
        
        
        
        
    </head>
    <body>
        <div class="text">
        <form name="myform" method="post" action="connect.jsp"  onsubmit="return validateForm();">
            <div class="tags">
                <p>   Profile pic:</p><a href="filefront.jsp" target="_blank"> upload profile pic</a>
             <%
         Object msg=request.getAttribute("name");
    %>
    <p>filename:</p>  <input type="text" value="<%=msg%>" name="msg">
            
          
   
            <br><br>
            <p>Certificate:</p> <a href="filefront1.jsp" target="_blank"> Upload Certificate</a>
          
    <%
    Object msg1=request.getAttribute("name1");
  %>
   
  <p> filename2:</p>  <input type="text" value="<%=msg1%>" name="msg1">
            </div>
    <br><br>
            
          <p>  Firstname:</p><input type="text" placeholder="firstname"name="fname"><br>
            <br>
         <p>   Lastname:</p><input type="text" placeholder="Lastname" name="lname"><br>
          <br>
            <p>Email:</p><input type="text" placeholder="email" name="email"><br>
          <br>
            
         <p>   Temporary-Address:</p><input type="text" placeholder="Temporary address" name="tadd"><br>
<br>          
         <p>  Phone number:</p><input type="text" placeholder="Phone number" name="phoneno"><br>
    <br> 
         
            <p>Gender:</p><input type="radio" name="gender" value="male"> Male
                    <input type="radio" name="gender" value="female"> Female
                    <input type="radio" name="gender" value="other"> Other<br><br>
        <p>Marital Status:</p><input type="radio" name="mstatus" value="single"> Single
                      <input type="radio" name="mstatus" value="married"> Married
                      <input type="radio" name="mstatus" value="divorced"> Divorced<br><br>
     <p>Blood Group:</p><input type="text" placeholder="Bood group" name="bg"><br><br>
     <p>Permanent-Address:</p><input type="text" placeholder="Permanent-address" name="paddress">
     <br><br>
   
            <p>Father's name:</p><input type="text" placeholder="Father's name"name="faname"><br>
    <br>      
            <p>Mother's name:</p><input type="text" placeholder="Mother's name" name="mname"><br>
     <p>About yourself:</p><br><br><textarea rows="4" cols="50" name="comment">
Write about yourself...</textarea>
     <br><br>
     <p>Work experience:</p><br><br><textarea rows="4" cols="50" name="comment1">
 work field
 number of years of experience
    </textarea>
     
     
    
     <br><br>
     <input type="submit" value="register">
            
            
        </form>
    
        <script>
function validateForm() {
   
   
    var  ph= document.forms["myform"]["phoneno"].value;
    var tadd = document.forms["myform"]["tadd"].value;
   
   
    var fname = document.forms["myform"]["fname"].value;
    var lname = document.forms["myform"]["lname"].value;
    
    var faname = document.forms["myform"]["faname"].value;
    var mname = document.forms["myform"]["mname"].value;
    var  paddress= document.forms["myform"]["paddress"].value;
    
    if(fname==="" && lname==="" && tadd==="" &&faname==="" &&mname==="" && paddress==="" ){
        alert("empty field is not valid");
       return false; 
    }
   
    var x = document.forms["myform"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
   
}
</script>
        
        </div>
    </body>
    </center>
</html>
