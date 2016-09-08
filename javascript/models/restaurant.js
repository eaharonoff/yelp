class Restaurant{
 constructor(name){
  this.name = name 
  this.reviews = []
  this.customers = []
  store["restaurants"].push(this)
 }

 static all(){
  return store["restaurants"]
 }

 static findByName(name){
    return store["restaurants"].find(function find(restaurant){return restaurant.name == name})
  }

  reviews(){
    return this.reviews
  }

  customers(){
    return this.customers
  }
}