require "./Item.rb"
require "./List.rb"

#Agregar articulo
#Marcar un articulo
#Remover un articulo
#Borrar todos los articulos
#Ver todos los articulos 
#Buscar un articulo
#Salir de la aplicacion
class App
  attr_writer :list

  def initialize
    @list = List.new
  end

  def run
    puts "Bienvenido a nuestra lista de compras"
    loop do
      puts "\na - Agregar un articulo"
      puts "r - Remover un articulo"
      puts "v - Mostrar todos los articulos"
      puts "m - Marcar un articulo"
      puts "b - Borrar todos los articulos"
      puts "f - Buscar un articulo"
      puts "s - Salir de la aplicación "
      input = gets.chomp

      case input
      when 's' 
        break
      when 'a'
        print "Indica el nombre del articulo: "
        articulo = gets.chomp
        @list.add_item(articulo)
        40.times { print "*"}
        puts "\n#{articulo} ha sido agregado a tu lista\n"
        40.times { print "*"}
      when 'r'
        print "Indica el articulo a remmover numero: "
        articulo = gets.chomp
        @list.remove_item(articulo)
        40.times { print "*"}
        puts "\n#{articulo} ha sido eliminado de tu lista\n"
        40.times { print "*"}
      when 'v'
        40.times { print "*"}
        puts
        @list.show_all
        40.times { print "*"}
      when 'm'
        print "Marcar un elemento de la lista numero: "
        articulo = gets.chomp
        @list.check_item(articulo)
      when 'b'
        @list.remove_all
      when 'f'
        print "indica el nombre del articulo: "
        articulo = gets.chomp
        found = @list.find(articulo)
        if found
          puts "El articulo ya esta en la lista"
        else
          puts "El articulo no esta en la lista"
        end
      end
    end
  end
end

app = App.new
app.run