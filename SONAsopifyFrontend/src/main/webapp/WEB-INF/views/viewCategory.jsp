<%@ include file="header.jsp"%>
<table class="table table-striped">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Operation</th>
  </tr>
  <c:forEach items="${catList}" var="cat">
  <tr>
    <td>${cat.c_id}</td>
    <td>${cat.c_name}</td>
    <td><a href="${e}updateCategorybyId/${cat.c_id}" class="btn btn-primary">update</a><a href="${e}deleteCategory/${cat.c_id}" class="btn btn-primary">delete</a></td>
  </tr>
  </c:forEach>
  
</table>
<%@ include file="footer.jsp"%>
