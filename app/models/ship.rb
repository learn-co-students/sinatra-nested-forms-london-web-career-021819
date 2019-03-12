class Ship

  attr_accessor :name, :type, :booty
  @@all = []
  def initialize(ship_params)
    @name = ship_params[:name]
    @type = ship_params[:type]
    @booty = ship_params[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

end
