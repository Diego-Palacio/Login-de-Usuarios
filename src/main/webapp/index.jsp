<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login de usuarios</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>

	<div class="container d-flex justify-content-center align-items-center" style="margin-top:50vh"> 
 <form class="row g-3">
	  <div class="col-auto">
	    <label for="staticEmail2" class="visually-hidden">Email</label>
	    <input type="text"  class="form-control" id="staticEmail2" placeholder="Email">
	  </div>
	  <div class="col-auto">
	    <label for="inputPassword2" class="visually-hidden">Password</label>
	    <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
	  </div>
	  <div class="col-auto">
	    <button type="submit" class="btn btn-primary mb-3">Confirm identity</button>
	  </div>
</form>
</div>

 
</body>
</html>