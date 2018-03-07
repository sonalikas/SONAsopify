<%@include file="header.jsp" %>

<div class="container-fluid" style=" width:100%;  background-image:url('resources/images/login1.jpg')">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12"> 

<form action="saveCategory" method="post" class="form-container">
<h1><span style="color:white;"><b>Add Category</b></span></h1>
  <div class="form-group">
    <label for="c_name"><span style="color:#fff">Enter Name</span> </label>
    <input type="text" class="form-control" id="c_name" placeholder="Enter Name" name="c_name">
  </div>
  <button type="submit" class="btn btn-success btn-block">submit</button>
</form>

</div></div></div>
<%@include file="footer.jsp" %>