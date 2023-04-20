require 'cat_fact'

RSpec.describe CatFacts do
  it 'gets a random cat fact from an API' do
    requester_dbl = double :requester
    expect(requester_dbl).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"A cat named Dusty, aged 1 7, living in Bonham, Texas, USA, gave birth to her 420th kitten on June 23, 1952.","length":107}')
    cat_fact = CatFacts.new(requester_dbl)
    expect(cat_fact.provide).to eq "Cat fact: A cat named Dusty, aged 1 7, living in Bonham, Texas, USA, gave birth to her 420th kitten on June 23, 1952."
  end

end