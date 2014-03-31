require 'sinatra/base'

class App < Sinatra::Application
  PRODUCTS = []
  get '/' do 
    erb :products
  end

  get '/new' do 
    erb :new
  end

  post '/' do 
    new_item = params[:new_item]
    PRODUCTS << new_item
  end
end
