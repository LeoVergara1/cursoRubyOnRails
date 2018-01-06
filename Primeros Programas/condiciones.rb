edad = gets
edad = edad.to_i
if edad < 18
  puts "Puedes pasar al bar"
elsif edad < 21
  puts "Pasar, Pero no puedes beber"
else
  puts "No tienes la edad suficiente jajaja pque "
end
