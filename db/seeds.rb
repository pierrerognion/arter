require 'faker'

Artwork.destroy_all

puts 'Creating artworks...'
artwork1 = Artwork.new(
  name: "La Joconde",
  description: "A fantastic pieace of art.",
  artist: "Léonard de Vinci",
  category: "peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  user_id: 1)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566296643/arter-pic/503545_piu7cm.jpg"
artwork1.remote_picture_url = url

artwork1.save!

artwork2 = Artwork.new(
  name: "La Méridienne",
  description: "description",
  artist: "Vincent Van Gogh",
  category: "peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  user_id: 1)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566294606/arter-pic/546289_qocnwm.jpg"
artwork2.remote_picture_url = url

artwork2.save!

artwork3 = Artwork.new(
  name: "Sacre de l'empereur Napoléon et couronnement de l'impératrice Joséphine",
  description: "description",
  artist: "Jacques-Louis David",
  category: "peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  user_id: 1)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566294650/arter-pic/195338_rrfloq.jpg"
artwork3.remote_picture_url = url

artwork3.save!

artwork4 = Artwork.new(
  name: "L'Église d'Auvers-sur-Oise",
  description: "description",
  artist: "Vincent Van Gogh",
  category: "peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  user_id: 1)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566294702/arter-pic/43138_ahj82a.jpg"
artwork4.remote_picture_url = url

artwork4.save!

artwork5 = Artwork.new(
  name: "L'atelier au mimosa",
  description: "description",
  artist: "Pierre Bonnard",
  category: "peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  user_id: 1)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566294820/arter-pic/38932_xkl3a1.jpg"
artwork5.remote_picture_url = url

artwork5.save!

artwork6 = Artwork.new(
  name: "Gelb-Rot-Blau",
  description: "description",
  artist: "Vassily Kandinsky",
  category: "peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  user_id: 1)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566295749/arter-pic/32702_nizyaf.jpg"
artwork6.remote_picture_url = url

artwork6.save!

artwork7 = Artwork.new(
  name: "L'Adoration du veau",
  description: "description",
  artist: "Francis Picabia",
  category: "peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  user_id: 1)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566295918/arter-pic/330906_wucecd.jpg"
artwork7.remote_picture_url = url

artwork7.save!

artwork8 = Artwork.new(
  name: "Le Tricheur à l'as de carreau",
  description: "description",
  artist: "Georges de La Tour",
  category: "peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  user_id: 1)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566296203/arter-pic/1057046_mausgp.jpg"
artwork8.remote_picture_url = url

artwork8.save!

artwork9 = Artwork.new(
  name: "Balaam",
  description: "description",
  artist: "Gérard Garouste",
  category: "peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  user_id: 1)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566296369/arter-pic/313285_b9ssie.jpg"
artwork9.remote_picture_url = url

artwork9.save!

artwork10 = Artwork.new(
  name: "La Charmeuse de serpents",
  description: "description",
  artist: "Henri Rousseau",
  category: "peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  user_id: 1)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566296575/arter-pic/268476_gpj9ee.jpg"
artwork10.remote_picture_url = url

artwork10.save!

puts 'Finished!'
