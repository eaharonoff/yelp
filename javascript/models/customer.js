class Customer {
  constructor(name){
    this.name = name
    store["customers"].push(this)
  }
  static all(){
    return store["customers"]
  }

  static findByName(name){
    return store["customers"].find(function find(person){return person.name == name})
  }

  addReview(text, restaurant){
    if (Restaurant.all.includes(Restaurant.findByName(restaurant))){
      reviewedPlace = Restaurant.findByName(restaurant)
    }else{
      reviewedPlace = new Restaurant(restaurant)
    }
    review = new Review({body: text, customer: self, restaurant: reviewedPlace})
    reviewedPlace.reviews.push(review)
    reviewedPlace.customers.push(self)
  }

  addRestaurant(restaurant){
    if (!Restaurant.findByName(restaurant)){
      return 'This restaurant does not exist!'
    }else{
      restaurantToAdd = Restaurant.findByName(restaurant)
    }
    if(restaurantToAdd.customers.includes(self)){
      return 'Restaurant already added'
    }else{
      restaurantToAdd.customers.push(self)
    }
  }
}