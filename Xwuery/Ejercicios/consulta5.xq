for $baile in doc ("bailes.xml")//baile
where $baile/nombre[contains(text(),'a')]
return
<baile>
 <nombre>{$baile/nombre/text()}</nombre>
</baile>