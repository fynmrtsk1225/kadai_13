
User.create!(name: "admin", email: "admin@exam.com", password: "password1", admin: "true")

require 'romaji'
require "romaji/core_ext/string"

User.create!([
  { name: "eipamu", email: "eipamu@exam.com", password: "password2" },
  { name: "a-bo", email: "a-bo@exam.com", password: "password3" },
  { name: "kabutopusu", email: "kabutopusu@exam.com", password: "password4" },
  { name: "omunaito", email: "omunaito@exam.com", password: "password5" },
  { name: "riza-do", email: "riza-do@exam.com", password: "password6" },
  { name: "monjara", email: "monjara@exam.com", password: "password7" },
  { name: "zenigame", email: "zenigame@exam.com", password: "password8" },
  { name: "kapoera-", email: "kapoera-@exam.com", password: "password9" },
  { name: "supia-", email: "supia-@exam.com", password: "password10" },
  { name: "do-buru", email: "do-buru@exam.com", password: "password11" },
])

User.guest
User.guest_admin

User.all.each do |n|
  profile = n.build_profile
  image = File.open("./public/profile_image/poke#{n.id}.png")
  content = "sample#{n.id}"
  age = '10代'
  constitution = 'Single'
  floor = '1K'
  square = '20~25㎡'
  n.profile.update!(
    image:              image,
    content:          content,
    age:                  age,
    constitution: constitution,
    floor:              floor,
    square:             square,
  )
end

User.all.each do |n|
  name = "#{Faker::House.furniture}"
  color = "#{Faker::Color.color_name}"
  width = "#{Faker::Number.number(digits: 2)}"
  depth = "#{Faker::Number.number(digits: 2)}"
  height = "#{Faker::Number.number(digits: 3)}"
  image = File.open("./public/idea_image/room#{n.id}.jpeg")
  content = "sample#{n.id}"
  n.room_ideas.create!(
    name:        name,
    color:      color,
    width:      width,
    depth:      depth,
    height:    height,
    image:      image,
    content:  content,
  )
end

Tag.create!(name: "同棲")
Tag.create!(name: "ファミリー")
Tag.create!(name: "二世帯")
Tag.create!(name: "ミニマリスト")
Tag.create!(name: "IKEA")
Tag.create!(name: "ニトリ")
Tag.create!(name: "無印")
Tag.create!(name: "韓国")
Tag.create!(name: "北欧系")
Tag.create!(name: "白")
Tag.create!(name: "淡色")
Tag.create!(name: "モノトーン")
Tag.create!(name: "おしゃれ")
Tag.create!(name: "かわいい")
Tag.create!(name: "シンプル")