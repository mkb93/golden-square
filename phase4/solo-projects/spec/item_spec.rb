require 'item'

RSpec.describe Item do
  it 'constructs' do
    item1 = Item.new('item1',10,10.00)
  end
  it "outputs name, amount and price" do
    item1 = Item.new('item1',10,10.00) 
    expect(item1.name).to eq 'item1'   
    expect(item1.amount).to eq 10 
    expect(item1.price).to eq  10.00
  end
  it "registers that quantity changes by one" do
    item1 = Item.new('item1',10,10.00) 
    expect(item1.name).to eq 'item1'   
    expect(item1.amount).to eq 10 
    expect(item1.price).to eq  10.00
    item1.one_less
    expect(item1.amount).to eq  9
  end
  it "fails if 0 of an item" do
    item1 = Item.new('item1',1,10.00) 
    expect(item1.name).to eq 'item1'   
    expect(item1.amount).to eq 1
    expect(item1.price).to eq  10.00
    item1.one_less
    expect(item1.amount).to eq  0
    expect{item1.one_less}.to raise_error 'sold out'
  end
end