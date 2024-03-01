<html>
<head><title>Consulta2examen</title></head>
<body>
  <table border="1">
  <tr>
    <th>NombreProv</th>
    <th>ReferenciaProv</th>
    <th>Direccion</th>
    <th>CP</th>
    <th>Telefono</th>
     
  </tr>
 {for $A in doc ("examen.xml")//proveedor
   where $A[PaisProveedor = "Francia"]
  return 
   <tr>  
    <td>{$A/NombreProveedor}</td>
    <td>{$A/ReferenciaProveedor}</td>
    <td>{$A/DireccionProveedor}</td>
     <td>{$A/CodigoPostal}</td>
      <td>{$A/TelefonoProveedor}</td>
       
  </tr>
 }
  </table>
</body>
</html>