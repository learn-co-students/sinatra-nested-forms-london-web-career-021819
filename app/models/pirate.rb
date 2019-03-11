class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def intialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end
