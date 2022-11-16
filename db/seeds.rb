# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Grandma.destroy_all
User.destroy_all

user = User.create!(username: "Alex", email: "agagjk@gmail.com", password:"1237654w6576", address: "dgjhdgjhdghv")

Grandma.create!(first_name: "Betty", last_name: "Drakeford", photo_url: "https://imageio.forbes.com/specials-images/imageserve/5e00ccaae961e1000739bfd0/John-Winsor-Open-Assembly-Open-Talent/960x0.jpg?format=jpg&width=960", description: "Hi, I am Betty. I love knitting, cooking and looking after children. I am available most days (except Tuesdays when I have Bridge club).", address: "Buckingham Palace, London, SW1A 1AA", user: user)
Grandma.create!(first_name: "Jenifer", last_name: "Lewis", photo_url: "https://mediaproxy.salon.com/width/1200/https://media.salon.com/2017/11/jenifer-lewis3.jpg", description: "Jenifer here. I'm outgoing and in to fitness. Looking to meet new people and absolutely love kids.", address: "10 Downing St, London SW1A 2AA, United Kingdom", user: user)
Grandma.create!(first_name: "Mei", last_name: "Li", photo_url: "https://www.refinery29.com/images/10197759.jpg?format=webp&width=680&height=1020&quality=85", description: "Hello, nice to meet you. I am Mei and I live in Beijing. Looking to get out of the house and try new things.", address: "4 Jingshan Front St, Dongcheng, Beijing, China", user: user)
Grandma.create!(first_name: "Gertrude", last_name: "Sandmann", photo_url: "https://cdn.trendhunterstatic.com/thumbs/dj-granny.jpeg?auto=webp", description: "I love Berlin nightlife and am a regular at Berghain. Let's go party!", address: "Alexanderplatz, 10178 Berlin, Germany", user: user)
