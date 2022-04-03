<html>
<head>
	<%@include file="./base.jsp" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
	
<style>
 
h1{
font-family: 'Rubik Wet Paint', cursive;
}
/* <body background="<c:url value='/resources/image/moviecollage.jpg' />"> */
body{
	/* background-image: url('/resources/image/moviecollage.jpg');
	background-repeat: no-repeat;
  	background-attachment: fixed;
  	background-size: cover; */
  	/* opacity: 0.1; */
}
/* #bgi{
opacity: 0.1;
} */
</style>
</head>
<body>
	<%-- <body id="bgi" background="<c:url value='/resources/image/moviecollage.jpg' />"> --%>
	<%-- background="<c:url value='/resources/image/moviecollage.jpg' />" --%>
	<%-- <img alt="image" src="<c:url value="/resources/image/moviecollage.jpg" />"> --%>
	<!-- <div style='position:absolute;z-index:0;left:0;top:0;width:100%;height:100%'>
         <img src='untitled.jpg' style='width:100%;height:100%' alt='[]' />
     </div> -->
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3" style="color:MediumSeaGreen">Welcome to Movie App</h1>
				
				<table class="table">
					  <thead class="thead-light">
					    <tr>
					      <th scope="col">Id</th>
					      <th scope="col">Movie Name</th>					    
					      <th scope="col">Price</th>
					      <th scope="col">Tickets</th>
					      <th scope="col">Delete/Update</th>
					    </tr>
					  </thead>
					  <tbody>
					  <c:forEach items="${movies }" var="m">
					    <tr>
					      <th scope="row">${m.id }</th>
					      <td>${m.name }</td>				     
					      <td>&#x20B9 ${m.price }</td>
					       <td>${m.ticket }</td>
					      <td>
					      		<a href="delete/${m.id }"><i class="fa-solid fa-trash-can text-danger mr-4"></i></a>
					      		<a href="update/${m.id }"><i class="fa-solid fa-wrench"></i></a>
					      </td>
					    </tr>
					  </c:forEach>
					  </tbody>
					</table>
					
					<div class="container text-center">
						<a href="add-movie" class="btn btn-outline-success mr-2">Add Movie</a>
						<a href="buy-ticket" class="btn btn-outline-success">Buy Ticket</a>
					</div>
			</div>
		</div>
	</div>
	
	

</body>

</html>

