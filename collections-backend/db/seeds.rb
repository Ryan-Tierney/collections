# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Collection.create(name: 'Pokemon Cards', value: 50, description: 'My prize collection of pokemon cards')
Item.create(name: 'Pikachu', value: 5, description: 'mint condition gen 1 pikachu card', collection_id: 1)
Item.create(name: 'Charizard', value: 45, description: 'mint condition gen 1 charizard card with shadow', collection_id: 1)


Collection.create(name: 'Autographed Football Helmets', value: 2500, description: 'A collection of football helmets autographed by various pro athletes')
Item.create(name: 'Joe Montana Autographed Helmet', value: 500, description: 'A Chiefs helmet signed by Joe Montana', collection_id: 2)
Item.create(name: 'Ray lewis Autographed Helmet', value: 1000, description: 'A Ravens helmet signed by Ray Lewis', collection_id: 2)
Item.create(name: 'Peyton Manning Autographed Helmet', value: 1000, description: 'A Colts Helmet signed by Peyton Manning', collection_id: 2)