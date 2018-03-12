<%@include file="header.jsp" %>

<div class="container-fluid" style=" width:100%;  background-image:url('resources/images/login1.jpg')">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12"> 

<form action="${e}updateCategory" method="post" class="form-container">
<h1><span style="color:black; font-family:Forte;"><b>Update Category</b></span></h1>
  <div class="form-group">
    <label for="c_name"><span style="color:black">Enter Name</span> </label>
    <input type="text" class="form-control" id="c_name" placeholder="Enter Name" name="c_name" value="${cat.c_name}">
    <input type="hidden" name="c_id" value="${cat.c_id}">
  </div>
  <button type="submit" class="btn btn-success btn-block">submit</button>
</form>

</div></div></div>
<%@include file="footer.jsp" %>