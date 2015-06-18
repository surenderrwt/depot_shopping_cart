# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
product.delete_all
#...
Product.create!(title: 'Programing Ruby 1.9 & 2.2',
description:
%{Ruby is the most fastest growing and most exiting dynamic language out there.},
image_url: 'https://lh6.googleusercontent.com/-NxZGUZXZg6A/AAAAAAAAAAI/AAAAAAAAAAc/QS4oVJL2NgI/photo.jpg',
price: 29.99)
#...
