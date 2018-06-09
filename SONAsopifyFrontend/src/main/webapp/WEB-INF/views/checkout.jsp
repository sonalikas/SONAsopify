
<%@include file="header.jsp"%>

<div class="container-fliud"
	style="background: url('resources/images/register.png');">
	<form class="form-horizontal" action="${e}placeOrder" method="post"
		style="margin-top: 0%; margin-bottom: 0%;">
		<h1 style="text-align: center; font-family: Forte; color: black;">
			<b> Shipping Details</b>
		</h1>
		<div class="form-group">
			<label class="control-label col-sm-2" for="name" required="">Name:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="name"
					placeholder="Enter Name" name="name">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="hno" required="">House No:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="hno"
					placeholder="Enter House no." name="hno">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="city" required="">City:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="city"
					placeholder="Enter City" name="city">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="state" required="">State:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="state"
					placeholder="Enter State" name="state">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="pincode" required=""g>Pincode:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="pincode"
					placeholder="Enter Pincode" name="pincode">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="mobile" pattern="[6-9]{1}[0-9]{9}" maxlength="10" title="please enter a valid number" required="">Mobile:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="mobile"
					placeholder="Enter mobile no." name="mobile">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="paymode" required="">Payment Mode:</label>
			<div class="col-sm-10">
				
					<div class="form-control">
						<input required="" type="radio" value="COD" name="payMode"> COD <input
							type="radio" value="Credit Card" name="payMode"> Credit
						Card <input type="radio" value="Net Banking" name="payMode">
						Net Banking
					</div>
	</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-success">Place Order</button>
			</div>   
		</div>
	</form>
</div>

</body>
</html>
<%@include file="footer.jsp"%>

 