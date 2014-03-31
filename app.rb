require 'sinatra/base'

class App < Sinatra::Application

  get '/' do 
    erb :products
  end

  get '/new' do 
    erb :new
  end
end
