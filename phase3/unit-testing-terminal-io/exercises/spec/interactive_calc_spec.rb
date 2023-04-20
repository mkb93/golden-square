require 'interactive_calc'

RSpec.describe InteractiveCalculator do
  it 'subtracts a number in the terminal' do
    io = double :io
    expect(io).to receive(:puts).with('enter a number')
   
    expect(io).to receive(:gets).and_return('5')
    expect(io).to receive(:puts).with('enter another number')
    expect(io).to receive(:gets).and_return('4')
    expect(io).to receive(:puts).with('here is your result')
    expect(io).to receive(:puts).with('5 - 4 = 1').ordered
    
    calc = InteractiveCalculator.new(io)
    
     calc.run

  end
  it 'subtracts a number in the terminal' do
    io = double :io
    expect(io).to receive(:puts).with('enter a number')
   
    expect(io).to receive(:gets).and_return('jim')
    expect(io).to receive(:puts).with('enter another number')
    expect(io).to receive(:gets).and_return('4')
    expect(io).to receive(:puts).with('here is your result')
    expect(io).to receive(:puts).with('5 - 4 = 1').ordered
    
    calc = InteractiveCalculator.new(io)
    
     expect{calc.run}.to raise_error 'enter a number'

  end
end