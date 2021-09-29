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

# ユーザー
user1 = team1.users.create(
  name: "テストユーザー",
  email: "test1@example.com",
  phone_number: "09012345678",
  password: "password",
  password_confirmation: "password"
)

user2 = team2.users.create(
  name: "テストユーザー",
  email: "test2@example.com",
  phone_number: "09087654321",
  password: "password",
  password_confirmation: "password"
)

# Letters
user1.sent_letters.create(
  receiver_id: user2.id,
  content: "サンプルLetterの1番目です。"
)

user2.sent_letters.create(
  receiver_id: user1.id,
  content: "サンプルLetterの2番目です。"
)

# 自己評価
user1.create_own_color(
  color1: 1,
  color2: 0,
  color3: 6,
  color4: 4,
  color5: 3,
  color6: 2,
  color7: 6,
  color8: 3,
  color9: 2,
  color10: 0,
  color11: 5,  
)
