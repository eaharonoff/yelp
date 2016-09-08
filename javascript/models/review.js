class Review{
  constructor(args){
    this.body = args['body']
    this.restaurant = args['restaurant']
    this.customer = args['customer']
    store.reviews.push(this)
  }
  static all(){
    return store.reviews
  }
}