puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Chez la mère de macenzie',
    address:      '7 Boundary St, London E2 7JE',
    category: 'chinese'
  },
  {
    name:         'KFC',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category: 'italian'
  }, 
  {
    name:         'Chez harris',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category: 'japanese'
  },
  {
    name:         'Tacos world',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category: 'french'
  },
  {
    name:         'Burger King',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category: 'belgian'
  }
]
Restaurant.create!(restaurants_attributes)

Review.create(content: 'bon', rating: 4)



puts 'Finished!'