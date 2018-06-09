<%@include file="header.jsp"%>
<br/>
<div class="container">
<div class="row">
<div class="col-sm-6">
<div class="thumbnail"  >
      <a href="${e}viewProductDetails/${pro.id}">
        <img src="${e}resources/proImage/${pro.id}.jpg" alt="Lights" style="height:400px">
       </a>
    </div>
</div>
<div class="col-sm-6">
<span style="font-size: 20px">
<table class="table">
<tr><td><h1>${pro.name}</h1></td></tr>
<tr><td><b>Quantity: </b>${pro.quantity}</td></tr>
    <tr><td><b>Price:</b> ${pro.price} Only</td></tr>
    <tr><td><b>Description: </b>${pro.description}</td></tr>
    <tr><td><b>Category: </b>${pro.category.c_name}</td></tr>
    <tr><td><b>Supplier: </b>${pro.supplier.s_name}</td></tr>
    <tr>
    <td>
     <div class="caption">
          <a href="${e}addToCart/${pro.id}" class="btn btn btn-success">Add To Cart</a>
        </div>
        </td>
      </tr>
</table></span>
</div>
</div></div>
<br/><%@include file="footer.jsp"%>