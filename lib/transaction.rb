require 'sinatra'
require 'rubygems'
require 'httparty'

class Transaction
  attr_accessor :euros
  POUNDS_PAID = 19.99
  EACH_BLOCK = 3.24
  include HTTParty
  base_uri 'https://openexchangerates.org/api'

  def geteuros
    euros = self.class.get('/convert/1/GBP/EUR?app_id=8567d4e0f026487db09bafbfbfda2069')
    euros['response']
  end

  def calculate
    ((geteuros * POUNDS_PAID) / EACH_BLOCK).to_i
  end
end
