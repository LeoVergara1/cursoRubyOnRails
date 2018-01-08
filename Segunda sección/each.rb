lista = [1,2,3,4,5,6]

lista.each do |num|
  puts num
end


contactos = {aldo: 12433, brand: 9383, diego: 938333} #Con los dos puntos hace simbolos las kys si no las quieres así debes usar '=>'

contactos.each do |key, value|
  puts "Llave: #{key}, El valor es #{value}"
end

#Es lo mismo usar llaves o  no
contactos.each { |key, value|
  puts "Llave: #{key}, El valor es #{value}"
}

#Solo llaves 
contactos.each_key do |key|
  puts "Llave: #{key}"
end
#Solo values
contactos.each_value do |it| 
  puts "Value: #{it}"
end


#Solo values
"Una palabra".each_char do |it| 
  puts "letra: #{it}"
end

#Times 

10.times do  |index| #opcional el indice 
  puts "iterador times: #{index}"
end