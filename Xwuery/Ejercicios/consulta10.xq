
for $baile in doc ("bailes.xml")//baile
return
<bailes>
  <nombre>{$baile/nombre/text()}</nombre>
  <precio>{$baile/(precio * plazas)}</precio>
</bailes>