<%@ include file="header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form modelAttribute="product" method="post" action="${e}saveProduct" enctype="multipart/form-data">
Name : <form:input path="name"/><br/>
Price : <form:input path="price"/><br/>
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
<%@ include file="footer.jsp" %>
