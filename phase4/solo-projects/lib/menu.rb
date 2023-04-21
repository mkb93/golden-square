class Menu
    def initialize
      @items = []
    end
  
    def show_items
      return @items.map do |item|
      "#{item.name} £#{item.price}"
    end
  end
    def add_item(item)
      fail 'this is not a in the item class' unless item.is_a?(Item)
      @items << item
    end
  
    def available?(item, menu)
      fail 'this is not on the menu' unless menu.include?(item)
      if item.quantity > 0
        return true
      else 
        return false
      end
    end
end

    