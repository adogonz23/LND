for $baile in doc ("bailes.xml")//baile
where $baile/sala[text()= 001 and ../precio/@moneda="euros" and ../precio>35 ]
return
<baile>
 <nombre>{$baile/nombre/text()}</nombre>
</baile>