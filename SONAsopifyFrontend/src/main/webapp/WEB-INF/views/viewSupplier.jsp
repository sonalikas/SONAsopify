<%@ include file="header.jsp"%>
<table class="table table-striped">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Operation</th>
  </tr>
  <c:forEach items="${supList}" var="sup">
  <tr>
    <td>${sup.s_id}</td>
    <td>${sup.s_name}</td>
    <td><a href="${e}updateSupplierbyId/${sup.s_id}" class="btn btn-primary">update</a><a href="${e}deleteSupplier/${sup.s_id}" class="btn btn-primary">delete</a></td>
  </tr>
  </c:forEach>
  
</table>
<%@ include file="footer.jsp"%>
