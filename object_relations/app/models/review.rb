class Review
  attr_reader :customer, :restaurant, :body
  @@all = []
  def initialize(args)
    @@all << self 
    @customer = args[:customer]
    @restaurant = args[:restaurant]
    @body = args[:body]
  end

  def self.all
    @@all 
  end
end

