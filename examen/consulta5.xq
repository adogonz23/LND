<html>
<head><title>Consulta5examen</title></head>
<body>
  <table border="1">
  <tr>
    <th>ReferenciaArticulo</th>
    <th>NombreArticulo</th>
    <th>ReferenciaProveedor</th>
    <th>NombreProveedor</th>
    
     
  </tr>
 {for $P in doc ("examen.xml")//proveedor
 for $A in doc ("examen.xml")//articulo
   where $A/ReferenciaProveedor = $P/ReferenciaProveedor and $A[NombreCategoria = "Bebidas"]
  return 
   <tr>  
    <td>{$A/RefArticulo}</td>
    <td>{$A/NombreArticulo}</td>
    <td>{$P/ReferenciaProveedor}</td>
     <td>{$P/NombreProveedor}</td>
      
       
  </tr>
 }
  </table>
</body>
</html>