<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
<c:url var="e" value="/"></c:url>
  <title>SONAsopify.com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<!-- <script>
function showResult(str) {
  if (str.length==0) { 
    document.getElementById("livesearch").innerHTML="";
    document.getElementById("livesearch").style.border="0px";
    return;
  }
  if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp=new XMLHttpRequest();
  } else {  // code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function() {
    if (this.readyState==4 && this.status==200) {
      document.getElementById("livesearch").innerHTML=this.responseText;
      document.getElementById("livesearch").style.border="1px solid #A5ACB2";
    }
  }
  xmlhttp.open("GET","livesearch.php?q="+str,true);
  xmlhttp.send();
}
</script>-->



</head>
<style>
#try{
opacity:0.1;
}
.con{
margin-top:10px;
padding:50px 60px;

-webkit-box-shadow: 0px 0px 14px 5px rgba(0,0,0,0.75);
-moz-box-shadow: 0px 0px 14px 5px rgba(0,0,0,0.75);
box-shadow: 0px 0px 14px 5px rgba(0,0,0,0.75);

}
.form-container{
margin-top:140px;
padding:50px 60px;

-webkit-box-shadow: 0px 0px 14px 5px rgba(0,0,0,0.75);
-moz-box-shadow: 0px 0px 14px 5px rgba(0,0,0,0.75);
box-shadow: 0px 0px 14px 5px rgba(0,0,0,0.75);
}
.bg-1 {
   <!--position: fixed;-->
 
   width: 100%;
   border-radius:0px;	
   background-color: #1a344c;
   color: white;
   text-align: center;
}/**
.thumbnail{
	position:relative;
	top:20px;
	right:250px;
	width:200px;
	height:10px;
	margin-right:150px;
	margin-left:200px;
	
	
}
.details  {

	margin-left:200px;
}**/

 .navbar-brand  {

font-family:Forte;
font-size:30px;

}
.form-group{
   color:black;
   font-size:110%;
   font-family:;
}
.shadowbox {
  border: 1px solid #333;
  box-shadow: 8px 8px 5px #444;
  padding: 8px 12px;
  background-image: linear-gradient(180deg, #fff, #ddd 40%, #ccc);
}
.btn-lg{
margin-left: 150px;
		margin-top:100px;
 margin-bottom:100px;
  }
  .continer{
  background-color:#b4f7b5;
  }
</style>
<body>

<div id="header">
	<img src="${e}resources/images/lgo.png"/>
	<img src="${e}resources/images/logo.png" height="70" width="700"/>
	<img id="try" src="${e}resources/images/side.png" height="110" width="280"/>
	<img  src="${e}resources/images/dalo.png"height="10%" width="13%"/>
	
	
</div>

<nav class="navbar navbar-inverse " style="margin:0px;">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="${e}"> SONAsopify </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
       
        <li class="active"><a href="${e}">Home</a></li>
         <c:if test='<%=session.getAttribute("loggedin")!=null%>'>
      <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <c:forEach items="${sessionScope.catList}" var="cat">
            <li><a href="${e}viewProductByCategory/${cat.c_id}">${cat.c_name}</a></li> 
		  </c:forEach>
         </ul>
        </li></c:if>
        <li><a href="${e}aboutUs">About Us</a></li>
        
     <li><a href="${e}customerService">Customer Service</a></li>
       </ul>
      <!--  <form class="navbar-form navbar-left" action="/action_page.php">
       <div class="input-group">
    <input type="text" class="form-control" placeholder="Search" size="30" onkeyup="showResult(this.value)">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
      <div id="livesearch"></div>
    </div>
  </div>
</form> -->
  
      <ul class="nav navbar-nav">
      <sec:authentication var="user" property="principal"/>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <c:if test='<%=session.getAttribute("loggedin")==null%>'>
        <li><a href="registerd"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      <c:if test='<%=session.getAttribute("loggedin")!=null%>'>
      <c:if test="${user.authorities=='[ROLE_ADMIN]'}">
      <li><a href="admin">Admin</a></li></c:if>
      <li><a href="${e}cart">Cart</a></li>
       <li><a href="${e}orders">Orders</a></li>
                   <li><a>Welcome ${user.username}</a></li>
    <li><a href="${e}perform_logout"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
      </c:if></ul>

    </div>
    
   
   
</nav>
