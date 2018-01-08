#loop {
#  puts "Esto es un ciclo"
#}

loop do
  print "Quieres continuar jugando s/n "
  respuesta = gets.chomp
  if respuesta != "s"
    break
  end
  puts "Esto es un ciclo"
end