require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      #for each pirate's ships create a ship class 
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      #create a instance variable for ships to be called to pirates/show.erb
      @ships = Ship.all
      erb :'pirates/show'
    end

  end
end
