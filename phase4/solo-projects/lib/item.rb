class Item
    def initialize(name,quantity,price)
      @name = name
      @quantity = quantity
      @price = price
    end
  
    def name
      return @name
    end
  
    def amount
      return @quantity
    end
  
    def price
      return @price
    end
  
    def one_less
      fail 'sold out' if @quantity == 0
      @quantity -= 1

    end
  end
  