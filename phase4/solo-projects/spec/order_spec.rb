require 'order'

RSpec.describe Order do
  it 'constructs and shows an empty order' do
    order = Order.new
    expect(order.show_order).to eq []
  end
  it 'adds two items and shows an array of price and item ' do
    order = Order.new
    item1 = double :item, name: 'item1', price: 5.00, one_less: 9
    item2 = double :item, name: 'item2', price: 6.00, one_less: 9
    menu = double :menu
    order.add_to_order(item1,menu)
    order.add_to_order(item2,menu)
    expect(order.show_order).to eq ['item1: £5.0', 'item2: £6.0']
  end
  it 'adds two items and shows an array of price and item ' do
    order = Order.new
    item1 = double :item, name: 'item1', price: 5.00, one_less: 9
    item2 = double :item, name: 'item2', price: 6.00, one_less: 9
    menu = double :menu
    order.add_to_order(item1,menu)
    order.add_to_order(item2,menu)
    expect(order.show_total_price).to eq "item1: £5.0, item2: £6.0, total price : £11.0"
  end
  it 'fails to checkout if there is no item added ' do
    order = Order.new
    expect{order.show_total_price}.to raise_error 'add item'
  end
end