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
    expect(menu.show_items).to eq ["item1 £10.00", "item2 £20.00", "item3 £30.00"]
    order = Order.new
    order.add_to_order(item3)
    order.add_to_order(item3)
    order.add_to_order(item1)
    expect(order.show_order).to eq ["item3: £30.00", "item3: £30:00", "item1: £10.00"]
    expect(order.show_total_price).to eq "total price : £70.00"
  end
end