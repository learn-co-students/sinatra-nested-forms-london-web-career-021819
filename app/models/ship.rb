class Ship
  attr_reader :name, :type, :booty

  @@ships = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    self.class.all << self
  end

  def self.all
    @@ships
  end

  def self.clear
    all.clear
  end
end
