require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/pirates' do
      @pirates = Pirate.all

      erb :'pirates/index'
    end

    get '/new' do

      erb :'pirates/new'
    end

    get '/pirates/:id' do
      erb :'pirates/show'
    end

    post '/pirates' do
      @pirate=Pirate.new(params["pirate"]["name"], params["pirate"]["height"], params["pirate"]["weight"])
      @ship_1=Ship.new(params["pirate"]["ships"][0]["name"], params["pirate"]["ships"][0]["type"], params["pirate"]["ships"][0]["booty"])
      @ship_2=Ship.new(params["pirate"]["ships"][1]["name"], params["pirate"]["ships"][1]["type"], params["pirate"]["ships"][1]["booty"])


      # redirect "/pirates/#{@pirate.id}"
      erb :'pirates/show'
    end

  end
end
