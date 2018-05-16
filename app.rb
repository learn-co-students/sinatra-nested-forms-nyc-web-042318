require './environment'
require "pry"

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do

      erb :'pirates/new'
    end

    post '/pirates' do
      ship = params["pirate"]["ships"][0]
      pirate = params["pirate"]

      @s1 = Ship.new(ship["name"],ship["type"],ship["booty"])

      ship = params["pirate"]["ships"][1]
      @s2 = Ship.new(ship["name"],ship["type"],ship["booty"])
      # binding.pry

      @p = Pirate.new(pirate["name"],pirate["weight"],pirate["height"])



      erb :'pirates/show'
    end



  end
end
