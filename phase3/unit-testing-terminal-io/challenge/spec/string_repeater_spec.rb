require 'string_repeater'
RSpec.describe StringRepeater do
  it 'runs' do
    fake = double :io 
    expect(fake).to receive(:puts).with('Hello. I will repeat a string many times')
    expect(fake).to receive(:puts).with('Please enter a string')
    expect(fake).to receive(:gets).and_return('string')
    expect(fake).to receive(:puts).with('Please enter a number of repeats')
    expect(fake).to receive(:gets).and_return(2)
    expect(fake).to receive(:puts).with('here is the result:')
    expect(fake).to receive(:puts).with('string'*2)
    string_repeater = StringRepeater.new(fake)
    string_repeater.run
  end
  it 'fails' do
    fake = double :io 
    expect(fake).to receive(:puts).with('Hello. I will repeat a string many times')
    expect(fake).to receive(:puts).with('Please enter a string')
    expect(fake).to receive(:gets).and_return(5)
    
    string_repeater = StringRepeater.new(fake)
    expect{string_repeater.run}.to raise_error 'enter a string'
  end
end
