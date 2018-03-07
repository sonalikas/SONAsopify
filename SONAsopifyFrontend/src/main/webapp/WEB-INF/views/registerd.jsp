	

<%@include file="header.jsp" %>

<div class="container-fliud" style="background: url('resources/images/register.png'); ">
<form class="form-horizontal" action="adduser" method="post" style="margin-top:0%;margin-bottom:0%;">
<h1 style=" text-align:center; font-family:Forte; color:black ;"><b> Registration form</b></h1>
<div class="form-group">
    <label class="control-label col-sm-2" for="pwd" >Username:</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" id="pwd" placeholder="Enter username" name="username">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd" >Name:</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" id="pwd" placeholder="Enter username" name="name">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Contact number:</label>
    <div class="col-sm-10"> 
      <input type="tel" class="form-control" id="pwd" placeholder="contact no." name="tel">
    </div>
  </div>

<div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Address:</label>
    <div class="col-sm-10"> 
      <textarea type="text" class="form-control" id="pwd" placeholder="Enter address" name="add"></textarea>
    </div>
  </div>
  

<div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pass">
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label><input type="checkbox" name="rpass"> Remember me </label>
      </div>
    </div>
  </div>
 

  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success" >
Register</button>
    </div>
    </div>
</form>
</div>

</body>
</html>



   
 

<%@include file="footer.jsp" %>

