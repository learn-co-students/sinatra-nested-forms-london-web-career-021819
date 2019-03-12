require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb  :'/pirates/new'
    end

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      #params[:pirate][:ships].to_s

      @pirate = Pirate.new(params[:pirate])

       params[:pirate][:ships].each {|ship| Ship.new(ship)}
      @ships = Ship.all

      erb :'/pirates/show'
    end

  end
end
