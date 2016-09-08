class Customer
  attr_accessor :name
  @@all = []
  def initialize(name)
    @@all << self 
    @name = name 
  end

  def self.all
    @@all 
  end

  def self.find_by_name(name)
    self.all.find{|human| human.name == name }
  end

  def add_review(review, restaurant)
    if Restaurant.all.include?(Restaurant.find_by_name(restaurant))
      restaurant_reviewed = Restaurant.find_by_name(restaurant)
    else
      restaurant_reviewed = Restaurant.new(restaurant)
    end 
    new_review = Review.new({customer: self, body: review, restaurant: restaurant_reviewed})
    restaurant_reviewed.reviews << new_review
    restaurant_reviewed.customers << self 
  end

end


# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer

