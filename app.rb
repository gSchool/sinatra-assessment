require 'sinatra/base'

class App < Sinatra::Application

  get '/' do 
    erb :products
  end
end
