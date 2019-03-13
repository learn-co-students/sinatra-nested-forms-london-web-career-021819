require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do
      #displays the form
      erb :'pirates/new'
    end

    post '/pirates' do
      # variable so show.erb can access ship data
      @pirate = Pirate.new(params)
#binding.pry
      # for each ship in the ships array, make a new instance with its params
      params["pirate"]["ships"].each do |details|
        Ship.new(details)

      end
      # binding.pry
      # variable so show.erb can access ship data
      @ships = Ship.all
      # displays the information posted with the form
      erb :'pirates/show'
    end

  end
end
