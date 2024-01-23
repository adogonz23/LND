for $baile in doc ("bailes.xml")//baile
where $baile/sala[text()= 001 and ../precio/@moneda="euros"] 
return
<baile>
 <nombre>{$baile/nombre/text()}</nombre>
</baile>