require "./Item.rb"

class List
  attr_writer :items

  def initialize()
    @items = Array.new
  end

  def add_item(text)
    item = Item.new(text)
    @items.push(item)
  end

  def remove_item(index)
    @items.delete_at(index.to_i)
  end

  def check_item(index)
    @items[index.to_i].checked = true
  end

  def remove_all
    @items.clear
  end

  def show_all
    if @items.length == 0
      puts "No hay articulos en tu lista de compras"
    else
      @items.each_index do |index|
        puts "#{index.to_s} - #{@items[index]}"
      end
    end
  end

  def find(name)
    found = false
    @items.each do |item|
      if item.text == name
        found = true
      end
    end
    found
  end
  
end