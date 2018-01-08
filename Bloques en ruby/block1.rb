def hola 
  puts "Hola desde nuestra funcion"
  resultado = 1+3
  yield resultado
end

hola do |resultado|
  puts "El resultado de nuestra operación es #{resultado}"
end