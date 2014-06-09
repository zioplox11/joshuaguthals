# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Photo.delete_all

photo1 = Photo.create(image_url: 'http://i.imgur.com/KOGp5GE.png', description: 'This was taken last year in Hawaii', name: 'Hawaii')

main_welcome_photo = Photo.create(image_url: '../public/images/images_1x_2x/welcome_images/joshua_by_well.jpg', description: 'Joshua sits contemplatively beside an abandoned well in Cold Spring, New York', name: 'Joshua by Well')

click_n_grow = Photo.create(image_url: '../public/images/images_1x_2x/favourite_things/click_and_grow.jpg', description: 'This is a click and grow plant', name: 'Click and Grow')

krav_maga = Photo.create(image_url: '../images/images_1x_2x/hobbies/krav_maga.jpg', description: 'People fight each other using Krav Maga', name: 'Krav Maga')

prowl_photo = Photo.create(image_url: 'public/images/images_1x_2x/portfolio_stills/prowl_photo.jpg', description: 'Prowl App landing page', name: 'Prowl Landing')

reuben_photo = Photo.create(image_url: 'public/images/images_1x_2x/friends_family/reuben_with_pretzel.jpg', description: 'Reuben eats a pretzel.', name: 'Reuben')



#  name        :string(255)
#  description :text


FavouriteThing.delete_all

favouritething1 = FavouriteThing.create(name: 'Click and Grow', description: 'I recently purchased a Click and Grow Smart Herb Garden that promises to grow lemon balm, basil, and thyme with no muss and no fuss whatsoever')

favouritething1.photos << click_n_grow

Hobby.delete_all

hobby1 = Hobby.create(name: 'Krav Maga self defense training', description: 'I have been practicing Krav Maga for about three months. It is a self-defense modality that is part of the basic training of the Isreali army. It emphasizes defending yourself from attackers by neutralizing them in the fewest (and most damaging) steps possible.' )

hobby1.photos << krav_maga

WebProject.delete_all

webproject1 = WebProject.create(name: 'Prowl', description: 'A lesbian dating, sex, friendship, and social networking app. Using real world user stories -- from interviews with a single woman in her twenties, a married couple with children, and a partnered couples expecting children -- we are in the process of creating a space for LGBTQ women to meet up and engage in social networking uniquely suited to their needs. ')

webproject1.photos << prowl_photo

AboutMe.delete_all

aboutme1 = AboutMe.create(name: 'Reuben', description: 'Reuben is my older biological son. He is being raised by his moms here in Brooklyn. He is bright, witty, and 3 years old.')

aboutme1.photos << reuben_photo



