def hola 
  puts "Hola desde nuestra funcion"
  yield 
end

hola do
  puts "Hola desde nuestro bloque"
end