require 'item'
require 'menu'
require 'order'

RSpec.describe "Integration test for takeaway" do
  it "is able to use classes that overlap" do
    item1 = Item.new('item1',10,10.00)
    item2 = Item.new('item2',10,20.00)
    item3 = Item.new('item3',10,30.00)
    menu = Menu.new
    menu.add_item(item1)
    menu.add_item(item2)
    menu.add_item(item3)
    expect(menu.show_items).to eq ["item1 £10.0", "item2 £20.0", "item3 £30.0"]
    order = Order.new
    order.add_to_order(item3,menu)
    order.add_to_order(item3,menu)
    order.add_to_order(item1,menu)
    expect(order.show_order).to eq ["item3: £30.0", "item3: £30.0", "item1: £10.0"]
    expect(order.show_total_price).to eq "total price : £70.0"
  end
end