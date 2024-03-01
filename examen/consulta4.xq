<html>
<head><title>Consulta4examen</title></head>
<body>
  <table border="1">
  <tr>
    <th>ReferenciaPedidos</th>
    <th>ReferenciaCliente</th>
    <th>ReferenciaArticulo</th>
    <th>Fecha</th>
    
     
  </tr>
 {for $C in doc ("examen.xml")//cliente
 for $A in doc ("examen.xml")//articulo
   where $A/RefArticulo = $C/RefArticulo and $C[RefCliente = "PICCO"]
  return 
   <tr>  
    <td>{$C/RefPedido}</td>
    <td>{$C/RefCliente}</td>
    <td>{$C/RefArticulo}</td>
     <td>{$C/FechaPedido}</td>
      
       
  </tr>
 }
  </table>
</body>
</html>