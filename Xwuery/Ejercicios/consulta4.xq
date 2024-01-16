for $baile in doc ("bailes.xml")//baile
order by $baile/nombre 
return
<baile>
 <nombre>{$baile/nombre/text()}</nombre>
</baile>