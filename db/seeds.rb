# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Artwork.destroy_all

puts 'Creating artworks...'
artwork1 = Artwork.new(name: "La Joconde", price: 378000, picture:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/260px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg", description: "A fantastic pieace of art.", artist: "Leonardo da Vinci", user_id: 1)
artwork1.save!

artwork2 = Artwork.new(name: "Art 2", price: 378000, picture:"https://images.unsplash.com/photo-1499781350541-7783f6c6a0c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1115&q=80", description: "A fantastic pieace of art.", artist: "Leonardo da Vinci", user_id: 1)
artwork2.save!

artwork3 = Artwork.new(name: "Art 3", price: 378000, picture:"https://images.unsplash.com/photo-1471202682735-bb0031d96f62?ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80", description: "A fantastic pieace of art.", artist: "Leonardo da Vinci", user_id: 1)
artwork3.save!

artwork4 = Artwork.new(name: "Art 4", price: 378000, picture:"https://images.unsplash.com/photo-1499781350541-7783f6c6a0c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1115&q=80", description: "A fantastic pieace of art.", artist: "Leonardo da Vinci", user_id: 1)
artwork4.save!

artwork5 = Artwork.new(name: "Art 5", price: 378000, picture:"https://images.unsplash.com/photo-1519145897500-869c40ccb024?ixlib=rb-1.2.1&auto=format&fit=crop&w=282&q=80", description: "A fantastic pieace of art.", artist: "Leonardo da Vinci", user_id: 1)
artwork5.save!

artwork6 = Artwork.new(name: "Art 6", price: 378000, picture:"https://images.unsplash.com/photo-1505868900972-a7ed025e680b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80", description: "A fantastic pieace of art.", artist: "Leonardo da Vinci", user_id: 1)
artwork6.save!


puts 'Finished!'