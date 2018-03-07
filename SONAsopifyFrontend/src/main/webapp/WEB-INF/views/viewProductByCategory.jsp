<%@ include file="header.jsp" %>
<div class="row">
<c:forEach items="${proList}" var="pro">
  <div class="col-md-4">
    <div class="thumbnail"  >
      <a href="${e}viewProductDetails/${pro.id}">
        <img src="${e}resources/proImage/${pro.id}.jpg" alt="Lights" style="height:300px">
        <div class="caption">
          <p>${pro.name}</p>
        </div>
      </a>
    </div>
  </div></c:forEach>
</div>
<%@ include file="footer.jsp" %>
