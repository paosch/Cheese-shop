require 'sinatra'
require 'rubygems'
require 'httparty'

class Transaction
  attr_accessor :euros
  include HTTParty
  base_uri 'https://openexchangerates.org/api'

  def geteuros
    euros = self.class.get('/convert/1/GBP/EUR?app_id=8567d4e0f026487db09bafbfbfda2069')
    euros['response']
  end

  def calculate
    ((geteuros * 19.99) / 3.24).to_i
  end
end
