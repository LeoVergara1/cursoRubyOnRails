def saludar(nombre, saludo)
  puts "Hola #{nombre} que  tengas #{saludo}"
end

nombre = gets
nombre = nombre.chomp
saludar(nombre, "Buenas tardes")