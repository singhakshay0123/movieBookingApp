<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
<title>ticket buying</title>
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
				<h1 class="text-center mb-3"style="color:blue">Buy Tickets</h1>
				<form action="handle-ticket" >
				  <div class="form-group">
				    <label for="id">Movie Id</label>
				    <input type="text" class="form-control" id="id"  placeholder="Enter movie id here" name="id">
				  </div>
				  <div class="form-group">
				    <label for="name">Movie Name</label>
				    <input type="text" class="form-control" id="name"  placeholder="Enter the movie name here" name="name">
				  </div>				  
				  <div class="form-group">
				    <label for="price">Price</label>
				    <input type="text" class="form-control" id="price"  placeholder="Enter the movie ticket price" name="price">
				  </div>
				  <div class="form-group">
				    <label for="ticket">No of Tickets</label>
				    <input type="text" class="form-control" id="ticket"  placeholder="tickets required" name="ticket">
				  </div>
				  <div class="container text-center">
				  	<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
				  	 <button type="submit" class="btn btn-outline-primary">Buy</button>
				  </div>
				 
				</form>
			</div>
		</div>
	</div>

</body>
</html>