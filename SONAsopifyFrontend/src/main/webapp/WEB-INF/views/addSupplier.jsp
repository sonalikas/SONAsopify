<%@include file="header.jsp" %>

<div class="container-fluid" style=" width:100%;  background-image:url('${e}resources/images/fish.jpg')">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12"> 

<form action="saveSupplier" method="post" class="form-container">
<h1><span style="color:black; font-family:Forte;"><b>Add Supplier</b></span></h1>
  <div class="form-group">
    <label for="s_name"><span style="color:#fff">Enter Name</span> </label>
    <input type="text" class="form-control" id="s_name" placeholder="Enter Name" name="s_name">
  </div>
  <button type="submit" class="btn btn-success btn-block">login</button>
</form>

</div></div></div>

<%@include file="footer.jsp" %>