<%@include file="header.jsp" %>
<table class="table table-hover">
<c:forEach items="${orderList }" var="order">
<tr>
<td><img src="${e}resources/proImage/${order.product.id}.jpg"  height="50" width="50"/><td>
<td>${order.product.name }</td>
<td>${order.quantity }</td>
<td>${order.orderID }</td>
<td>${order.shippingAddress.name }</td>
<td>${order.quantity*order.product.price}</td>

</tr>
</c:forEach>
</table>
<%@include file="footer.jsp" %>
