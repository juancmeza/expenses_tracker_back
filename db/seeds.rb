# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Expense.destroy_all
User.destroy_all
Category.destroy_all

c1 = Category.create(name: "Housing")
c2 = Category.create(name: "Bills & Utilities")
c3 = Category.create(name: "Auto & Transport")
c4 = Category.create(name: "Shopping")
c5 = Category.create(name: "Food & Dining")
c6 = Category.create(name: "Entertainment")
c7 = Category.create(name: "Personal Care")
c8 = Category.create(name: "Health & Fitness")
c9 = Category.create(name: "Kids")
c10 = Category.create(name: "Investments")
c11 = Category.create(name: "Travel")
c12 = Category.create(name: "Education")
c13 = Category.create(name: "Gifts & Donations")
c14 = Category.create(name: "Fees & Charges")
c15 = Category.create(name: "Business Services")
c16 = Category.create(name: "Taxes")
c17 = Category.create(name: "Other")

puts 'done'
