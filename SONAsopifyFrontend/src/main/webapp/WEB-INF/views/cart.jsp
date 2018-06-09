<%@include file="header.jsp"%>

<br />
<div class="container-fluid">

	<div class="row">

		<div class="col-md-2 col-sm-2 col-xs-12"></div>
		<div class="col-md-8 col-sm-8 col-xs-12">
			<table class="table table-striped table-bordered">
				<tr>
					<th colspan="9"><h1 style="font-family:Forte;
font-size:30px; text-align:Center ;">
								
								<b>Add To Cart</b>

								</h1></th>
				</tr>
				<tr>
					<th>Image</th>
					<th>Name</th>
					<th>Quantity</th>
					<th>Total Price</th>
					<th>Operation</th>
				</tr>
				<c:forEach items="${cartList}" var="cart">
					<tr>
						<td><img src="${e}resources/proImage/${cart.pro.id}.jpg"
							height="50" width="50" /></td>
						<td>${cart.pro.name}</td>
						<td><div class="btn-group">
								<a href="${e}changeCartItem/${cart.id}/-"
									class="btn btn-success">-</a> <a href=""
									class="btn btn-success">${cart.quantity}</a> <a
									href="${e}changeCartItem/${cart.id}/+" class="btn btn-success">+</a>
							</div></td>
						<td>Rs. ${cart.pro.price*cart.quantity}</td>
						<td><a href="${e}deleteCartItem/${cart.id}"
							class="btn btn-danger">delete</a></td>
					</tr>
				</c:forEach>

			</table>
			<a href="${e }checkout" class="btn btn-primary btn-block">Checkout</a>
		</div>
	</div>
</div>
<br />
<%@ include file="footer.jsp"%>
