<html>
  <head><title>Consulta Pagina Web</title></head>
  <body>
  <table border ="2"> Tabla1
  <tr>
    <th>Nombre baile</th>
    <th>Precio</th>
  </tr>
  {for $baile in doc ("bailes.xml")//baile
  where $baile/number(precio) > 40
  return
  <tr>
    <td>{$baile/nombre/text()}</td>
    <td>{$baile/precio/text()}</td>
  </tr>
  }
  </table>
  </body>
</html>