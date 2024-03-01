<html>
<head><title>Consulta3examen</title></head>
<body>
  <table border="1">
  <tr>
    <th>NombreCliente</th>
    <th>ReferenciaCliente</th>
    <th>Direccion</th>
    <th>Ciudad</th>
    
     
  </tr>
 {for $A in doc ("examen.xml")//cliente
   where $A[CiudadCliente = "Madrid"]
  return 
   <tr>  
    <td>{$A/NombreCliente}</td>
    <td>{$A/RefCliente}</td>
    <td>{$A/DireccionCliente}</td>
     <td>{$A/CiudadCliente}</td>
      
       
  </tr>
 }
  </table>
</body>
</html>