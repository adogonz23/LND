<html>
<head><title>Consulta1</title></head>
<body>
  <table border="1">
  <tr>
    <th>ReferenciaCliente</th>
    <th>Nombre</th>
    <th>Direccion</th>
  </tr>
   {for $cliente in doc ("neptuno.xml")//clientes
  where $cliente/CiudadCliente = "París"
  return 
 <tr>  
  <td>{$cliente/RefCliente/text()}</td>
  <td>{$cliente/NombreCliente/text()}</td>
  <td>{$cliente/DireccionCliente/text()}</td>
  </tr>
 }
  </table>
</body>
</html>