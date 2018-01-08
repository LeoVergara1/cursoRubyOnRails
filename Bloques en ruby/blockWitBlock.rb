def suma(n1,n2, &bloque) 
  puts "Hola desde nuestra funcion"
  resultado = n1 + n2
  if block_given?
    yield resultado
  else
    puts "El resultado desplegado en el metodo es #{resultado}"
  end
end

suma(6,5) do |resultado|
  puts "El resultado de nuestra operación es #{resultado}"
end

suma(10,5)


def findElement(element)
  element == 3
  yield element
end
list = [1,2,3,4,5]

number = list.detect { |element| findElement(element){ |element|  } }
puts number