require 'faker'


Artwork.destroy_all
User.destroy_all

user1 = User.new(first_name: "Édouard", last_name: "Foussier", email: "fouss@lewagon.com", password: "password")
user1.remote_avatar_url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566569855/arter-pic/IMG_2908_qradvl.jpg"
user1.save
user2 = User.new(first_name: "Arthur", last_name: "Littmann", email: "arthur@lewagon.com", password: "password")
user2.remote_avatar_url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566569855/arter-pic/IMG_2911_bvvlfu.jpg"
user2.save
user3 = User.new(first_name: "Louis", last_name: "Sommer", email: "thebestta@arter.com", password: "password")
user3.remote_avatar_url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566569855/arter-pic/IMG_2902_lbpo2o.jpg"
user3.save
user4 = User.new(first_name: "Gabriel", last_name: "Dehan", email: "levampire@gmail.com", password: "password")
user4.remote_avatar_url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566569855/arter-pic/IMG_2910_nya9jm.jpg"
user4.save
user5 = User.new(first_name: "Cécile", last_name: "Dezy", email: "front@end.com", password: "password")
user5.remote_avatar_url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566569855/arter-pic/IMG_2909_yzdkwo.jpg"
user5.save

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
  user: user1)

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
  user: user5)

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
  user: user1)

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
  user: user2)

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
  user: user4)

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
  user: user5)

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
  user: user2)

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
  user: user4)

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
  user: user1)

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
  user: user3)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566394862/arter-pic/okudart-e1540389383587_xu7cp7.png"
artwork10.remote_picture_url = url

artwork10.save!

# artwork11 = Artwork.new(
#   name: "",
#   description: Faker::Lorem.paragraph_by_chars,
#   artist: "Zack Gordon",
#   category: "Peinture",
#   width: rand(20..500),
#   depth: rand(3..20),
#   height: rand(30..300),
#   weight: rand(1..100),
#   price: rand(100..100000),
#   location: Faker::Address.full_address,
#   country: Faker::Address.country,
#   user: user1)

# url = ""
# artwork11.remote_picture_url = url

# artwork11.save!

artwork12 = Artwork.new(
  name: "Go to goal",
  description: Faker::Lorem.paragraph_by_chars,
  artist: "Gzadk Hyergf",
  category: "Peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  country: Faker::Address.country,
  user: user3)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566570343/arter-pic/c534333a82d42dcb31f120b5a8e44e62-1530031910_ugg12d.png"
artwork12.remote_picture_url = url

artwork12.save!

artwork13 = Artwork.new(
  name: "Ineck",
  description: Faker::Lorem.paragraph_by_chars,
  artist: "Brr",
  category: "Peinture",
  width: rand(20..500),
  depth: rand(3..20),
  height: rand(30..300),
  weight: rand(1..100),
  price: rand(100..100000),
  location: Faker::Address.full_address,
  country: Faker::Address.country,
  user: user2)

url = "https://res.cloudinary.com/dgfmeuzyy/image/upload/v1566570698/alexander-schimmeck-ineC_oi7NHs-unsplash_alqppf.jpg"
artwork13.remote_picture_url = url

artwork13.save!

puts 'Finished!'
