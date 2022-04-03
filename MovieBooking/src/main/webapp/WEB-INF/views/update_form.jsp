<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rubik+Wet+Paint&display=swap" rel="stylesheet">

<style>
 body {
  background-image: url('moviecollage.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
} 
h1{
font-family: 'Rubik Wet Paint', cursive;
}
</style>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3" style="color:rgb(245,199,26)">Change Product Details</h1>
				<form action="${pageContext.request.contextPath }/handle-movie" method="post">
				 <input type="hidden" value="${movie.id }" name="id" />
				  <div class="form-group">
				    <label for="name">Movie Name</label>
				    <input type="text" class="form-control" id="name"  placeholder="Enter the movie name here" name="name" value="${movie.name }">
				  </div>				  
				  <div class="form-group">
				    <label for="price">Price</label>
				    <input type="text" class="form-control" id="price"  placeholder="Enter the movie ticket price" name="price" value="${movie.price }">
				  </div>
				  <div class="form-group">
				    <label for="ticket">Tickets</label>
				    <input type="text" class="form-control" id="ticket"  placeholder="available tickets" name="ticket" value="${movie.ticket }">
				  </div>
				  <div class="container text-center">
				  	<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
				  	 <button type="submit" class="btn btn-warning">Update</button>
				  </div>
				 
				</form>
			</div>
		</div>
	</div>

</body>
</html>