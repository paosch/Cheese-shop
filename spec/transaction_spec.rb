require 'transaction'
require 'spec_helper'
require 'webmock/rspec'

describe Transaction do
  describe '#geteuros' do
    it 'makes successful call to API' do
      uri = URI('https://openexchangerates.org/')
      response = Net::HTTP.get(uri)
      expect(response).to be_an_instance_of(String)
    end
  end
end
