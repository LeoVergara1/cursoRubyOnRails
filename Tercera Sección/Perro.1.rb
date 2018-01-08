class Perro
  attr_reader :raza, :color, :edad
  attr_writer :raza, :color, :edad
  def initialize(raza, color, edad)
    @raza = raza
    @color = color
    @edad = edad  
  end

  def ladrar 
    puts "Gua gua gua "
  end

  def description
    puts "Soy de raza #{@raza}, y color #{@color}"
  end

  def ladrar(ladrido)
    puts ladrido
  end
end

perro = Perro.new("Pastor", "Rojo", 23)

puts perro.raza
puts perro.color
puts perro.edad