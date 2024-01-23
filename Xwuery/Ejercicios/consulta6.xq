for $baile in doc ("bailes.xml")//baile
where $baile/profesor[contains(text(),'lia')]
return
<baile>
 <profesor>{$baile/profesor/text()}</profesor>
</baile>