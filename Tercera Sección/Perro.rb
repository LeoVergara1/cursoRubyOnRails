class Perro

  def initialize(raza, color, edad)
    @raza = raza
    @color = color
    @edad = edad  
  end
  def raza
    "Pastor aleman"
  end

  def color
    "Cafe"
  end

  def edad
    "20"
  end

  def otro
    "Algo hace "
  end
end

perro = Perro.new("Pastor", "Rojo", 23)

puts perro.raza
puts perro.color
puts perro.edad