require 'transaction'
require 'spec_helper'
require 'webmock/rspec'

describe Transaction do
  let(:subject) { Transaction.new }
  describe '#geteuros' do
    it 'makes successful call to API' do
      uri = URI('https://openexchangerates.org/')
      response = Net::HTTP.get(uri)
      expect(response).to be_an_instance_of(String)
    end
  end
  describe '#calculate' do
    it 'calculates how much cheese the customer can buy with £19.99' do
      WebMock.allow_net_connect!
      allow(subject).to receive(:geteuros) { 2 }
      expect(subject.calculate).to eq 12
    end
  end
end
