<%@include file="header.jsp" %>
<div class="container">

 <div class="thumbnail" >
<img src="${e}resources/proImage/${pro.id}.jpg" width=200; margin=0;  /> 
 </div>
    <div class="details">
    <h3><b>${pro.name}</b></h3>
<hr>
<h5>IN STOCK: ${pro.quantity}</h5>
<h5>PRICE: ${pro.price}</h5>
<div id="cashOnDelivery_feature_div" class="feature" data-feature-name="cashOnDelivery">

<script type="a-state" data-a-state="{&quot;key&quot;:&quot;cashOnDeliveryPageState&quot;}">{"isCodRestrictedGl":false}</script>
      <span id="cod_eligible_message" class="a-color-base">
                <b>Cash on Delivery</b> eligible.
            </span>
</div>
<div id="featurebullets_feature_div" class="feature" data-feature-name="featurebullets">

<div id="feature-bullets" class="a-section a-spacing-medium a-spacing-top-small">
                               <ul class="a-unordered-list a-vertical a-spacing-none">
					
							<h5>${ pro.description}</h5>
													
</ul>
</div>

<h5>SUPPLIER NAME: ${pro.supplier.s_name}</h5>
<h5>CATEGORY: ${pro.category.c_name}</h5>

<a class="btn btn-primary" href="${e}addToCart/${pro.id}"> ADD TO CART</a>

</div>
</div>
</div>

<%@include file="footer.jsp" %>
