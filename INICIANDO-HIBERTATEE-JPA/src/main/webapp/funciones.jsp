<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String idbuss = request.getParameter("idbus");
String nombre = request.getParameter("Npr");
String precio = request.getParameter("Ppr");
String cantidad = request.getParameter("Cpr");
String total = request.getParameter("Tpr");

if(idbuss==null){
idbuss = "";
nombre ="";
precio ="";
cantidad ="";
total ="";
}
%>

<body>
<form action="ServleletControler">
<h2>AGREGAR DATOS</h2>
<table align="center">
	<thead>
	</thead>
<tbody>
<tr>
<td>				

<p>id</p> <input type="text" name="Id" value ="<%=idbuss %>">
<p>Nombre producto</p> <input type="text" name="Nproductos" value ="<%=nombre %>">
<p>Precio producto</p> <input type="text" name="Pproductos" value ="<%=precio %>">
<p>Cantidad producto</p> <input type="text" name="Cproductos" value ="<%=cantidad %>">
<p>Total producto</p> <input type="text" name="Tproductos" value ="<%=total %>">
<br>
<br>
</td>
</tr>

</tbody>
	
</table>
<input type="submit" class="btn btn-info" value="GUARDAR" name="btn">
<input type="submit" class="btn btn-info" value="ACTUALIZAR" name="btn">
</form>
</body>
</html>