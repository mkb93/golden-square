class item
    def initialize(name,quantity,price)
      @name = name
      @quantity = quantity
      @price = price
    end
  
    def show_name
      return @name
    end
  
    def amount
      return @quantity
    end
  
    def price
      return @price
    end
  
    def one_less
      @quantity -= 1
    end
  end
  