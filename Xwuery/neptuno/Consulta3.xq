<html>
<head><title>Consulta3</title></head>
<body>
  <table border="1">
  <tr>
    <th>ReferenciaArt</th>
    <th>NombreArt</th>
    <th>ReferecnaiProv</th>
    <th>NombreProv</th>
    <th>NombreCliente</th>
  </tr>
   {for $A in doc ("neptuno.xml")/neptuno
  where $A/articulos/ReferenciaProveedor = $A/proveedores/ReferenciaProveedor and $A/articulos/NombreCategoria = "alimentación"
  return 
   <tr>  
    <td>{$A/articulos/RefArticulo}</td>
    <td>{$A/articulos/NombreArticulo}</td>
    <td>{$A/proveedores/ReferenciaProveedor}</td>
    <td>{$A/proveedores/NombreProveedor}</td>
     <td>{$A/clientes/NombreCliente}</td>
    
  </tr>
 }
  </table>
</body>
</html>