<%@ include file="header.jsp"%>
<table class="table">

	<c:forEach items="${cartList}" var="cart">
		<tr>
			<td>${cart.pro.name}</td>
			<td><img src="${e}resources/proImage/${cart.pro.id}.jpg"
				height="50" width="50" /></td>
			<td><div class="btn-group">
					<a href="${e}changeCartItem/${cart.id}/-" class="btn btn-success">-</a>
					<a href="" class="btn btn-success">${cart.quantity}</a> <a
						href="${e}changeCartItem/${cart.id}/+" class="btn btn-success">+</a>
				</div></td>
			<td><a href="${e}deleteCartItem/${cart.id}"
				class="btn btn-danger">delete</a></td>
		</tr>
	</c:forEach>
</table>
<a href="${e}checkout" class="btn btn-primary btn-block">Checkout</a>
<br />
<%@ include file="footer.jsp"%>
