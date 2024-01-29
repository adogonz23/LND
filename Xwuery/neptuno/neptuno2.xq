for $cliente in doc ("neptuno.xml")//clientes
where $cliente/CiudadCliente ="pais"
return 
<resultado>
  <li>{$cliente/ReferenciaCliente}</li>
  <li>{$cliente/NombreCliente}</li>
</resultado>