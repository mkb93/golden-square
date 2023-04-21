require 'interactive_calc'

RSpec.describe InteractiveCalculator do
  it 'subtracts a number in the terminal' do
    io = double :io
    expect(io).to receive(:puts).with('enter a number').ordered
   
    expect(io).to receive(:gets).and_return('5').ordered
    expect(io).to receive(:puts).with('enter another number').ordered
    expect(io).to receive(:gets).and_return('4').ordered
    expect(io).to receive(:puts).with('here is your result').ordered
    expect(io).to receive(:puts).with('5 - 4 = 1').ordered
    
    calc = InteractiveCalculator.new(io)
    
     calc.run

  end
  it 'subtracts a number in the terminal' do
    io = double :io
    expect(io).to receive(:puts).with('enter a number')
   
    expect(io).to receive(:gets).and_return('jim')

    calc = InteractiveCalculator.new(io)
    
     expect{calc.run}.to raise_error 'enter a number'

  end
end