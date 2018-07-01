require 'sinatra'
require_relative './lib/transaction.rb'
class CheeseEmporium < Sinatra::Base
  get '/' do
    transaction = Transaction.new
    @final = transaction.calculate
    erb :index
  end
  run! if app_file == $0
end
