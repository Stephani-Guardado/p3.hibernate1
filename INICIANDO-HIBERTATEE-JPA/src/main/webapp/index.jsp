<html>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.js">
</script>
<script type="text/javascript">
	$(document).ready(function() {
		
       var btn = $('#carga').val();
       $.post('ServleletControler',{

       },function(respose){
       let datos = JSON.parse(respose);
       //console.log(datos);
       var tabladatos = document.getElementById('tablaDatos');
       for (let item of datos ){
       	//console.log(item.id)
       	tablaDatos.innerHTML += `
       	<tr>
       	<td>${item.id}</td>
       	<td>${item.nombreProducto}</td>
       	<td>${item.precioProducto}</td>
       	<td>${item.cantidadProducto}</td>
       	<td>${item.totalProducto}</td>
    	<td>
    	<a href="ServleletControler?btn=Eliminar&id=${item.id}" class="btn btn-warning">ELIMINAR</a>
    	<a href="funciones.jsp?idbus =${item.id}&Npr =${item.nombreProducto}&Ppr=${item.precioProducto}&Cpr=${item.cantidadProducto}&Tpr=${item.totalProducto}" class="btn btn-danger">ACTUALIZAR</a>
    	</td>

       	</tr>


       	`

       }
       
     
		});
	});
</script>
<body>

<a href="funciones.jsp" class="btn btn-info">AGREGAR</a>

<table class="table table-dark" id="tablaDatos">
	<thead>
		<th>ID</th>
		<th>NOMBRE</th>
		<th>PRECIO</th>
		<th>CANTIDAD</th>
		<th>TOTAL</th>
		<th>OPCIONES</th>
	</thead>
	<tbody>
		
	</tbody>
	
</table>

</body>
</html>
