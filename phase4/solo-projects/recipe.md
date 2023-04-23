# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.


## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_
item class
-show_name
-show_quantity
-show_price
menu class
-add_item
-show_items
-available?
order class
-add_to_order
-show_order
-show_total_price

_Also design the interface of each class in more detail._

```ruby
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

class Menu
  def initialize
    @items = []
  end

  def show_items
    return @items.map do |item|
    "#{item.name} £#{item.price}"
  end

  def add_item(item)
    fail 'this is not a in the item class' unless item.is_a(Item)
    @items << item
  end

  def available?(item)
    fail 'this is not on the menu' unless menu.include?(item)
    if item.quantity > 0
      return true
    else 
      return false
    end
  end
end
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
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
item1 = Item.new('item1',10,10.00)
item2 = Item.new('item2',10,20.00)
item3 = Item.new('item3',10,30.00)
menu = Menu.new
menu.add_item(item1)
menu.add_item(item2)
menu.add_item(item3)
menu.show_items => ["item1 £10.00", "item2 £20.00", "item3 £30.00"]
order = Order.new
order.add_to_order(item3,menu)
order.add_to_order(item3,menu)
order.add_to_order(item1,menu)
order.show_order => ["item3: £30.00", "item3: £30.00", "item1: £10.00"]
order.show_total_price => "total price : £70.00"
```
## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._


```ruby
item test if it completes if it returns its name, amount and price and if quantity is reduced when one_less is called

menu test if show items gives an aarray of price and name if it fails if array empty 
test if add_item adds an item and if it fails if the item added is not an Item 
test if available? shows true if quantity is greater than 0 if it returns false if 0 check if it fails if item is not on the menu

order test if it constructs and shows an empty order if you can add to the order and show a the entire order if you can then 'checkout' and show the full order with itemised pricing if 'checkout' fails  if no item is added prior to checkout.
```


_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fmulti_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fmulti_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fmulti_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fmulti_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fmulti_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->