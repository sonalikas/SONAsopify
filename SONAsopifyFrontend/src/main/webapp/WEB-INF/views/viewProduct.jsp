<%@ include file="header.jsp" %>
<table class="table table-striped">
  <tr>
    <th>ID</th>
    <th>Image</th>
    <th>Name</th>
    <th>Quantity</th>
    <th>Price</th>
    <th>Description</th>
    <th>Category</th>
    <th>Supplier</th>
    <th>Operation</th>
  </tr>
  <c:forEach items="${p_list}" var="pro">
  <tr>
    <td>${pro.id}</td>
    <td><img src="${e}resources/proImage/${pro.id}.jpg" height="50" width="50"/></td>
    <td>${pro.name}</td>
    <td>${pro.quantity}</td>
    <td>${pro.price}</td>
    <td>${pro.description}</td>
    <td>${pro.category.c_name}</td>
    <td>${pro.supplier.s_name}</td>
    <td><a href="${e}updateProductbyid/${pro.id}" class="btn btn-primary">update</a> <a href="${e}deleteProduct/${pro.id}" class="btn btn-primary">delete</a></td>
  </tr>
  </c:forEach>
  
</table>
<%@ include file="footer.jsp" %>
