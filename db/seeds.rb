# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 所属
team1 = Team.create(name: "テストチーム1")
team2 = Team.create(name: "テストチーム2")

team1.users.create(
  name: "テストユーザー",
  email: "test1@example.com",
  phone_number: "09012345678",
  password: "password",
  password_confirmation: "password"
)

team2.users.create(
  name: "テストユーザー",
  email: "test2@example.com",
  phone_number: "09087654321",
  password: "password",
  password_confirmation: "password"
)
