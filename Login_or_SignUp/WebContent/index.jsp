<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script> 
          
            // Function to check Whether both passwords 
            // is same or not. 
            function checkPassword(form) { 
                password1 = form.pwd1.value; 
                password2 = form.cpwd1.value; 
  
                // If password not entered 
                if (password1 == '') {
                    alert ("Please enter Password"); 
                    return false; 
                }
                // If confirm password not entered 
                else if (password2 == '') {
                    alert ("Please enter confirm password"); 
                    return false; 
                }
                // If Not same return False.     
                else if (password1 != password2) { 
                    alert ("\nPassword did not match: Please try again...") 
                    return false; 
                } 
  
                // If same return True. 
                else{ 
                    alert("Account Creation Requested") 
                    return true; 
                } 
            } 
     
        </script>
</head>
<body>
<%@page import="login.CreateUser"%>
<%@page import="login.Login"%>
<%
Login a = new Login();

if(a.lk==1){
	%>
	<script>alert("Invalid Credentials")</script>
	<%
	a.lk=0;
	
}
%>
<%

CreateUser c = new CreateUser();
if(c.i==1){
	%>
	<script>alert("User Created Successfully");</script>
	<% 
	c.i=0;
}
else if(c.i==2){
	%>
	<script>alert("The Entered Username is not Available Please try Again with Another Username");</script>
	<% 
	c.i=0;
}
%>




<div class="container">
  
  <form style="margin-left:38%; margin-top:15%; width:250px;" action="Login" method="post">
    <div class="form-group">
      <label for="usr">Username:</label>
      <input type="text" class="form-control" id="usr" name="uname">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input  type="password" class="form-control" id="pwd" name="pass"><br>
      <input style="width:125px;" type="button" name="signup" value="Sign Up" data-toggle="modal" data-target="#myModal"><input style="width:125px;" type="submit" value="Login">
    </div>
  </form>
  
  
   <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" style="margin-top:5%; width:auto; margin-left:8%;">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" >
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
          
          
          <form onSubmit = "return checkPassword(this)" action="CreateUser">
          
          
          <label for="usr">Userame:</label>
      <input type="text" class="form-control" id="usr" name="uname">
      
      <label for="pwd1">Password:</label>
      <input  type="password" class="form-control" id="pwd1" name="pass">
      
      <label for="cpwd1">Confirm Password:</label>
      <input  type="password" class="form-control" id="cpwd1">
      
      <label for="mail">Email:</label>
      <input  type="email" class="form-control" name="mail" id="mail" required>
      
      
      
      
     
    
             
      
      
      
      
    <!--  <label for="cotp">Enter OTP:</label>
      <input  type="number" class="form-control" id="cotp" required> -->
      <br>
      <input style="width:125px; margin-left:78%;" type="submit" value="Create Account" >
          </form>
            
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>

</body>
</html>
