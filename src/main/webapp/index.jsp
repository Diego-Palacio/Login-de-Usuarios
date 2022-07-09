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

	
 		
 	  <div id="form" class="container p-5 d-flex justify-content-center align-items-center" style="margin-top:150px;">
        
                <form class="row g-12 border border-secondary border-2 rounded p-4">
                
                    <section class="mt-2">
                        
                        <div class="col-md-12 mb-2">
                            <label for="EmailSesion" class="form-label m-1" style="width: 150px;">Email</label>
                            <input type="email" class="form-control" id="EmailSesion">
                        </div>
                        <div class="col-md-12 mb-2">
                            <label for="PasswordSesion" class="form-label m-1" style="width: 150px;">Contraseña</label>
                            <input type="password" class="form-control" id="passwordSesion">
                        </div>
                        
                        <div class="d-flex justify-content-end"> 
                            <a href="#" for="PasswordSesion" class="form-label">Olvidaste tu contraseña?</a>
                        </div>
                    
                        <div class="d-flex justify-content-center">
                            <div class="col-14 mb-2"><br>
                                <button type="submit" value="Enviar" style="width:100px ;" class="btn btn-primary btn-sm">Ingresar</button>
                                <a class="btn btn-danger btn-sm m-2" style="width:100px ;" href="../index.html" role="button">Salir</a>
                            </div>
                        </div>
                    </section>
                </form>
            </div>


 
</body>
</html>