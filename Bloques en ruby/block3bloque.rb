def suma(n1,n2, &bloque) 
  puts "Hola desde nuestra funcion"
  resultado = n1 + n2
  bloque.call resultado
end

suma(6,5) do |resultado|
  puts "El resultado de nuestra operación es #{resultado}"
end