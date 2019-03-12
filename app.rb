require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end
    
    get '/show' do
      erb :show
    end

    post '/pirates' do
      @pirate = Pirate.new(params['pirate']['name'], params['pirate']['weight'], params['pirate']['height'])
      @ship01 = Ship.new(params['pirate']['ships'][0]['name'], params['pirate']['ships'][0]['type'], params['pirate']['ships'][0]['booty'])
      @ship02 = Ship.new(params['pirate']['ships'][1]['name'], params['pirate']['ships'][1]['type'], params['pirate']['ships'][1]['booty'])

      erb :show
    end

  end
end

# {"pirate"=>
#   {"name"=>"Ian",
#    "weight"=>"165",
#    "height"=>"95",
#    "ships"=>[{"name"=>"Titanic", "type"=>"Steam Liner", "booty"=>"Silver"}, {"name"=>"Carpathia", "type"=>"Rescue Ship", "booty"=>"Inner Tubes"}]}}