<html>
<head><title>Consulta1examen</title></head>
<body>
  <table border="1">
  <tr>
    <th>ReferenciaArt</th>
    <th>ReferenciaProv</th>
    <th>NombreART</th>
    <th>Categoria</th>
    <th>PrecioUnidad</th>
     <th>Existencias</th>
  </tr>
 {for $A in doc ("examen.xml")//articulo
   where $A[NombreCategoria = "Bebidas"]
  return 
   <tr>  
    <td>{$A/RefArticulo}</td>
    <td>{$A/ReferenciaProveedor}</td>
    <td>{$A/NombreArticulo}</td>
     <td>{$A/NombreCategoria}</td>
      <td>{$A/PrecioUnidad}</td>
       <td>{$A/UnidadesExistencia}</td> 
  </tr>
 }
  </table>
</body>
</html>