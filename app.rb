require 'sinatra'
require_relative './lib/transaction.rb'
class CheeseEmporium < Sinatra::Base
  get '/' do
    erb :index1
  end
  run! if app_file == $0
end
