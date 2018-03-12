<%@ include file="header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form modelAttribute="product" method="post" action="${e}saveProduct" enctype="multipart/form-data">

<div class="container">
<table class="table table-dark table-hover">
   
<tr>
 <th>Name:</th>
        <td> <form:input path="name"/></td><br/>
<th>Price :</th>
 <td><form:input path="price"/></td>
 </tr>
 <tr>
<th>quantity :</th>
<td> <form:input path="quantity"/></td><br/>
<th>Description : </th>
<td><form:textarea path="description" rows="5"/></td>
</tr>
<tr>
<th>Supplier :</th>
<td> <form:select path="supplier.s_id">
<c:forEach items="${s_list}" var="sup">
<form:option value="${sup.s_id}">${sup.s_name}</form:option>
</c:forEach> </td>
</form:select><br/>
<th>Category : </th>
<td><form:select path="category.c_id">
<c:forEach items="${c_list}" var="cat">
<form:option value="${cat.c_id}">${cat.c_name}</form:option>
</c:forEach></td>
</form:select><br/>
</tr>
<tr>
<th>image : </th>
<td>
<form:input path="image" type="file"/><br/></td>
</tr>
<tr>
<button type="submit" class="btn btn-success">Success</button>
</tr>
<!-- <input type="submit"/> -->
</form:form>
</table>
</div>
<%@ include file="footer.jsp" %>
 