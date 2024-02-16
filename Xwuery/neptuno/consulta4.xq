<html>
<head><title>Consulta4</title></head>
<body>
  <table border="1">
  <tr>
    <th>ReferenciaArt</th>
    <th>NombreArt</th>
    <th>ReferecnaiProv</th>
  </tr>
 {for $A in doc ("neptuno.xml")//articulos

  return 
   <tr>  
    <td>{$A/RefArticulo}</td>
    <td>{$A/NombreArticulo}</td>
    <td>{$A/ReferenciaProveedor}</td> 
  </tr>
 }
  </table>
</body>
</html>