class Order
    def initialize
      @order = []
    end
    
    def add_to_order(item, menu)
      item.one_less
      @order << item
    end
  
    def show_order
      return @order.map do |item|
      "#{item.name}: £#{item.price}"
    end
  end
  
    def show_total_price
      fail 'add item' unless @order.length >0
      price =@order.map do |item|
      item.price
      end.sum
      return show_order.join(", ") +", total price : £#{price}"
    end
end