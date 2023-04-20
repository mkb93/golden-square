require 'time_error'
require 'date'
require 'json'
require 'net/http'

RSpec.describe TimeError do
  it 'brings a time error' do 
    time = double :fake_time
    expect(time).to receive(:now).and_return(10)
    requester = double(:requester )
    expect(requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"BST","client_ip":"82.163.117.26","datetime":"2023-04-20T15:48:57.396194+01:00","day_of_week":4,"day_of_year":110,"dst":true,"dst_from":"2023-03-26T01:00:00+00:00","dst_offset":3600,"dst_until":"2023-10-29T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1682002137,"utc_datetime":"2023-04-20T14:48:57.396194+00:00","utc_offset":"+01:00","week_number":16}')
    time_error = TimeError.new(requester)
    
    expect(time_error.error(time)).to eq  '2023-04-20 14:48:47 +0000'
  end
end