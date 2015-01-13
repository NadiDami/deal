# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

def seed_image(name)
  File.open(Rails.root.join("db/seed_images/#{name}"))
end

Category.delete_all
books = Category.create name: 'Books'
music_games_movies_and_tv = Category.create name: 'Music, Games, Movies & TV'
electronics_and_computers = Category.create name: 'Electronics & Computers'
home_garden_pets_and_diy = Category.create name: 'Home, Garden, Pets & DIY'
toys_children_and_baby = Category.create name: 'Toys, Children & Baby'
clothes_shoes_and_jewellery = Category.create name: 'Clothes, Shoes & Jewellery'
sports_and_outdoors = Category.create name: 'Sports & Outdoors'
grocery_health_and_beauty = Category.create name: 'Grocery, Health & Beauty'
car_and_motorbike = Category.create name: 'Car & Motorbike'

Business.delete_all
Business.create company_name: 'Waterstones', email: 'ceo@waterstones.com', password: '123456789', password_confirmation: '123456789', category: books, avatar: seed_image('fox.gif')
Business.create company_name: 'HMV', email: 'ceo@hmv.com', password: '123456789', password_confirmation: '123456789', category: music_games_movies_and_tv, avatar: seed_image('fox.gif')
Business.create company_name: 'Apple', email: 'ceo@apple.com', password: '123456789', password_confirmation: '123456789', category: electronics_and_computers, avatar: seed_image('fox.gif')
Business.create company_name: 'Burberry', email: 'ceo@burberry.com', password: '123456789', password_confirmation: '123456789', category: clothes_shoes_and_jewellery, avatar: seed_image('fox.gif')
Business.create company_name: 'Adidas', email: 'ceo@adidas.com', password: '123456789', password_confirmation: '123456789', category: sports_and_outdoors, avatar: seed_image('fox.gif')

Offer.delete_all
Offer.create product: 'Harry Potter and the Philosophers Stone', product_description: 'A delightful romp through happy wizard land with a variety of memorable characters', price: 2, :RRP => 9, business_id: 1, available_from: "13/01/2015", available_to: "21/01/2015", users_time_availablity: 30, avatar: seed_image('fox.gif'), teaser: seed_image('fox.gif')
Offer.create product: 'MacBook Pro', product_description: "A laptop of supreme delightfulness", price: 50, :RRP => 1000, business_id: 3, available_from: "13/01/2015", available_to: "20/01/2015", users_time_availablity: 30, avatar: seed_image('fox.gif'), teaser: seed_image('fox.gif')
Offer.create product: 'iPod', product_description: "Listen to your favourite music, on the go!", price: 100, :RRP => 200, business_id: 3, available_from: "13/01/2015", available_to: "20/01/2015", users_time_availablity: 30, avatar: seed_image('fox.gif'), teaser: seed_image('fox.gif')
Offer.create product: 'Nadal Tennis Racket', product_description: "Play like the man himself", price: 90, :RRP => 145, business_id: 5, available_from: "13/01/2015", available_to: "20/01/2015", users_time_availablity: 30, avatar: seed_image('fox.gif'), teaser: seed_image('fox.gif')
Offer.create product: 'Michael Jackson album', product_description: "Exclusive special limited edition", price: 12, :RRP => 20, business_id: 2, available_from: "13/01/2015", available_to: "20/01/2015", users_time_availablity: 30, avatar: seed_image('fox.gif'), teaser: seed_image('fox.gif')

Customer.delete_all
Customer.create email: '1@example.com', password: '123456789', password_confirmation: '123456789'
Customer.create email: '2@example.com', password: '123456789', password_confirmation: '123456789'
Customer.create email: '3@example.com', password: '123456789', password_confirmation: '123456789'

