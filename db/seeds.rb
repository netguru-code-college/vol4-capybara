# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
#Product.destroy_all

#User.destroy_all
#Ingredient.destroy_all


csv_text = File.read(Rails.root.join('lib', 'seeds', 'products.csv'))
csv = CSV.parse(csv_text, :headers => false)
csv.each do |row|
    p = Product.create(name: row.first)
    p.save
  end

puts "There are now #{Product.count} rows in the products table"


User.create(email: "admin@admin.com", admin: true, password: "password", avatar: "https://pikio.pl/wp-content/uploads/2018/12/nosacz11-1021x580.jpg")
User.create(email: "normal@normal.com", password: "password", avatar: "http://kabaret.tworzymyhistorie.pl/images/news/2018101221094087.jpg")
User.create(email: "test@test.com",  password: "password", avatar: "https://img.besty.pl/images/394/63/3946341.jpg")

Ingredient.create(exp_date: Time.now, quantity: 1, product_id: 1, unit: "kg", user_id: 1)
Ingredient.create(exp_date: Time.now, quantity: 33, product_id: 3, unit: "litre", user_id: 1)
