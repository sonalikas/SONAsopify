<%@ include file="header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form modelAttribute="product" method="post" action="${e}saveProduct" enctype="multipart/form-data">
<table class="table table-dark table-hover">

<form:input path="id" type="hidden"/>

<tr>
 <th>Name:</th>
 <td><form:input path="name"/><br/></td>
<th>Price :</th>
 <td><form:input path="price"/><br/></td>
</tr>
quantity : <form:input path="quantity"/><br/>
Description : <form:textarea path="description" rows="5"/><br/>
Supplier : <form:select path="supplier.s_id">
<c:forEach items="${s_list}" var="sup">
<form:option value="${sup.s_id}">${sup.s_name}</form:option>
</c:forEach>
</form:select><br/>
Category : <form:select path="category.c_id">
<c:forEach items="${c_list}" var="cat">
<form:option value="${cat.c_id}">${cat.c_name}</form:option>
</c:forEach>
</form:select><br/>
image : <form:input path="image" type="file"/><br/>
<input type="submit"/>
</form:form>
</table>
<%@ include file="footer.jsp" %>
