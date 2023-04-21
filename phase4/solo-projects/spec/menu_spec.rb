require 'menu'

RSpec.describe do
  it "shows that items can be added to the menu" do
    item1 = double :item, name: 'item1', quantity: 10, price: 10.00, is_a?: true
    menu = Menu.new
    menu.add_item(item1)
    expect(menu.show_items).to eq ['item1 £10.0']
  end
  it "fails when menu is empty" do
    menu = Menu.new
    expect{menu.show_items}.to raise_error 'add something to the menu'
  end
  it "fails if it is not an item class" do
    item1 = double :item, name: 'item1', quantity: 10, price: 10.00, is_a?: false
    menu = Menu.new
    expect{ menu.add_item(item1) }.to raise_error 'this is not an item'
  end
  it "shows that items are available" do
    item1 = double :item, name: 'item1', quantity: 10, price: 10.00, is_a?: true
    menu = Menu.new
    menu.add_item(item1)
    expect(menu.available?(item1)).to eq true
  end
  it "shows that items are not available" do
    item1 = double :item, name: 'item1', quantity: 0, price: 10.00, is_a?: true
    menu = Menu.new
    menu.add_item(item1)
    expect(menu.available?(item1)).to eq false
  end
  it "shows that items can become unavailable" do
    item1 = double :item, name: 'item1', quantity: 1, price: 10.00, is_a?: true
    item1 = double :item, name: 'item1', quantity: 0, price: 10.00, is_a?: true
    
    menu = Menu.new
    menu.add_item(item1)
    expect(menu.available?(item1)).to eq false
  end

end