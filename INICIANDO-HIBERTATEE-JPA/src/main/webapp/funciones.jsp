<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="ServleletControler">
<h2>AGREGAR DATOS</h2>
<table align="center">
	<thead>
	</thead>
<tbody>
<tr>
<td>				

<p>id</p> <input type="text" name="Id">
<p>Nombre producto</p> <input type="text" name="Nproductos">
<p>Precio producto</p> <input type="text" name="Pproductos">
<p>Cantidad producto</p> <input type="text" name="Cproductos">
<p>Total producto</p> <input type="text" name="Tproductos">
<br>
<br>
</td>
</tr>

</tbody>
	
</table>
<input type="submit" class="btn btn-info" value="GUARDAR" >
</form>
</body>
</html>