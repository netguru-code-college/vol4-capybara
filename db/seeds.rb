# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'products.csv'))
csv = CSV.parse(csv_text, :headers => false)
csv.each do |row|
    p = Product.create(name: row.first)
    p.save
  end
  
puts "There are now #{Product.count} rows in the products table"


User.create(email: "admin@admin.com", admin: true, password: "password")
User.create(email: "normal@normal.com", password: "password")
User.create(email: "test@test.com",  password: "password")

Ingredient.create(exp_date: Time.now, quantity: 1, product_id: 1, unit: "kg", user_id: 1)
Ingredient.create(exp_date: Time.now, quantity: 33, product_id: 3, unit: "litre", user_id: 1)
