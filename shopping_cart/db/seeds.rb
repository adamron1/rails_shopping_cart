EXAMPLE_PRODUCTS = [
  {title: "Used car", price: 500 , description:"It's not very good, I honestly don't recommend it" },
  {title: "Best friend", price:10  , description:"I'll nod my head and agree with stuff you're saying"},
  {title: "Dog poo", price: 1000, description: "Be that cool person who brandishes their money by literally buying crap"}
]
EXAMPLE_PRODUCTS.each{|seed| Product.create!(seed)}
