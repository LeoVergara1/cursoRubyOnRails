contactos = {aldo: 12433, brand: 9383, diego: 938333} #Con los dos puntos hace simbolos las kys si no las quieres así debes usar '=>'
contactosNuevo = {mama:827287, papa:8373783}

nueva = contactos.merge(contactosNuevo)

puts nueva
puts"Llaves del hash"
puts nueva.keys #lista de llaves en el hash
puts "Cuando no se tiene una llave"
puts "Buscando aldo"
puts nueva.has_key?(:aldo)
puts "Buscando francisco"
puts nueva.has_key?(:francisco) #Muy util en entrevistas de ruby 
puts "Agregando con store"
nueva.store(:otra,9978733)
puts nueva

puts "Buscando el value de brand"
puts nueva.has_value?(9383)