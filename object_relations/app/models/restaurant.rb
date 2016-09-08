class Restaurant
  attr_accessor :name
  attr_reader :customers, :reviews
  @@all = []
  def initialize(name)
    @@all << self 
    @name = name
    @customers = []
    @reviews = []
  end

  def self.all
    @@all 
  end

  def self.find_by_name(name)
    self.all.find{|restaurant| restaurant.name == name }
  end
  
end