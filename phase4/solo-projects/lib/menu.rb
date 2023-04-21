class Menu
    def initialize
      @items = []
    end
  
    def show_items
      fail 'add something to the menu' unless @items.length > 0
      return @items.map do |item|
      "#{item.name} £#{item.price}"
    end
  end
    def add_item(item)
      fail 'this is not an item' unless item.is_a?(Item)  
      @items << item
    end
  
    def available?(item)
      fail 'this is not on the menu' unless @items.include?(item)
      if item.quantity > 0
        return true
      else 
        return false
      end
    end
end

    