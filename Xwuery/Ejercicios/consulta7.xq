for $baile in doc ("bailes.xml")//baile
where $baile[@id != 3 and  @id != 5] 
return
<baile>
 <nombre>{$baile/nombre/text()}</nombre>
</baile>