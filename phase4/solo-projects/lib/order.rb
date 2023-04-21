class Order
    def initialize
      @order = []
    end
    
    def add_to_order(item)
      fail 'item not available' unless item.available?
      item.one_less
      @order << item
    end
  
    def show_order
      return @order.map do |item|
      "#{item.name}: £#{item.price}"
    end
  
    def show_total_price
      price =@order.map do |item|
      item.price
      end.sum
      return "total price : £#{price}"
    end
  end