<html>
<head><title>Consulta1</title></head>
<body>
  <table border="1">
  <tr>
    <th>referencia</th>
    <th>nombre</th>
    <th>pais</th>
  </tr>
  {for $prov in doc ("neptuno.xml")//proveedores
  return
 <tr>  
  <td>{$prov/ReferenciaProveedor/text()}</td>
  <td>{$prov/NombreProveedor/text()}</td>
  <td>{$prov/PaisProveedor/text()}</td>
  </tr>
 }
  </table>
</body>
</html>
