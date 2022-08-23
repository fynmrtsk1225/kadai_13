
User.create!(name: "admin", email: "admin@exam.com", password: "password1", admin: "true")

# require 'romaji'
# require "romaji/core_ext/string"

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
