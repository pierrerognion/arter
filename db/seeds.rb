require 'faker'


Artwork.destroy_all
User.destroy_all

toto = User.new(email:"pierrerognion@gmail.com", password:"testest")
nana = User.new(email:"nana@gmail.com", password:"password")

puts 'Creating artworks...'
artwork1 = Artwork.new(
  name: "Balloon Rabbit",
  description: Faker::Lorem.paragraph_by_chars,
  artist: "Jeff Koons",
  category: "Sculpture",
  width: 90,
  depth: 70,
  height: 50,
  weight: 15,
  price: 4000,
  location: Faker::Address.full_address,
  country: Faker::Address.country,
  user: toto)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566393963/arter-pic/Jeff-KOONS-Jeff-Koons-Balloon-Rabbit-Monkey-Swan-S-1551450014_1_x2rxv2.png"
artwork1.remote_picture_url = url

artwork1.save!

artwork2 = Artwork.new(
  name: "Balloon Dog",
  description: Faker::Lorem.paragraph_by_chars,
  artist: "Jeff Koons",
  category: "Sculpture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  country: Faker::Address.country,
  user: nana)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566394221/arter-pic/13242180_nv1s6g.png"
artwork2.remote_picture_url = url

artwork2.save!

artwork3 = Artwork.new(
  name: "Rdp.",
  description: Faker::Lorem.paragraph_by_chars,
  artist: "Pablo Nomek",
  category: "Sculpture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  country: Faker::Address.country,
  user: toto)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566394316/arter-pic/Pablo_Nomek_byhlj4.png"
artwork3.remote_picture_url = url

artwork3.save!

artwork4 = Artwork.new(
  name: "Paint Background",
  description: Faker::Lorem.paragraph_by_chars,
  artist: "Yarkie Kraski",
  category: "peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  country: Faker::Address.country,
  user: nana)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566395542/arter-pic/paint-background-yarkie-kraski-home-decor_1_cmuk7o.png"
artwork4.remote_picture_url = url

artwork4.save!

artwork5 = Artwork.new(
  name: "The Lion King",
  description: Faker::Lorem.paragraph_by_chars,
  artist: "Wagonner",
  category: "peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  country: Faker::Address.country,
  user: toto)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566393964/arter-pic/bordalo_lion_gu8ext.png"
artwork5.remote_picture_url = url

artwork5.save!

artwork6 = Artwork.new(
  name: "Femme assise",
  description: Faker::Lorem.paragraph_by_chars,
  artist: "Alberto Giacometti",
  category: "Sculpture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  country: Faker::Address.country,
  user: nana)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566394597/arter-pic/70177_ckqoyb.png"
artwork6.remote_picture_url = url

artwork6.save!

artwork7 = Artwork.new(
  name: "Flower",
  description: Faker::Lorem.paragraph_by_chars,
  artist: "Iosifina Kosma",
  category: "Sculpture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  country: Faker::Address.country,
  user: toto)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566394701/arter-pic/download_svkaor.png"
artwork7.remote_picture_url = url

artwork7.save!

artwork8 = Artwork.new(
  name: "Okuda",
  description: Faker::Lorem.paragraph_by_chars,
  artist: "Bricj Galudz",
  category: "Sculpture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  country: Faker::Address.country,
  user: nana)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566394797/arter-pic/Okuda2_afzgdr.png"
artwork8.remote_picture_url = url

artwork8.save!

artwork9 = Artwork.new(
  name: "Balmhir in the park",
  description: Faker::Lorem.paragraph_by_chars,
  artist: "Bobby l'Aventure",
  category: "Peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  country: Faker::Address.country,
  user: toto)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566295749/arter-pic/32702_nizyaf.jpg"
artwork9.remote_picture_url = url

artwork9.save!

artwork10 = Artwork.new(
  name: "L'épargne",
  description: Faker::Lorem.paragraph_by_chars,
  artist: "Gzadk Hyergf",
  category: "Sculpture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  country: Faker::Address.country,
  user: nana)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566394862/arter-pic/okudart-e1540389383587_xu7cp7.png"
artwork10.remote_picture_url = url

artwork10.save!

puts 'Finished!'
