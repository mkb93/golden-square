require 'menu'

RSpec.describe do
  it "shows that items can be added to the menu" do
    item1 = double :item1, name: 'item1', quantity: 10, price: 10.00
    menu = Menu.new
    menu.add_item(item1)
    expect(menu.show_items).to eq ['item1 £10.0']
  end
  it "fails when menu is empty" do
    menu = Menu.new
    expect{menu.show_items}.to raise_error 'add something to the menu'
  end
end