for $x at $a in (books.xml) //title
return
<libros>
  <libro>{$a}. {data($x)}</libro>
  <autores>{$x/../count(author)}</autores>
</libros>