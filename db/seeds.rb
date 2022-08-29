
User.create!(name: "admin", email: "admin@exam.com", password: "password1", admin: "true")

require 'romaji'
require "romaji/core_ext/string"

User.create!([
  { name: "エイパム", email: "eipamu@exam.com", password: "password2" },
  { name: "アーボ", email: "a-bo@exam.com", password: "password3" },
  { name: "カブトプス", email: "kabutopusu@exam.com", password: "password4" },
  { name: "オムナイト", email: "omunaito@exam.com", password: "password5" },
  { name: "リザード", email: "riza-do@exam.com", password: "password6" },
  { name: "モンジャラ", email: "monjara@exam.com", password: "password7" },
  { name: "ゼニガメ", email: "zenigame@exam.com", password: "password8" },
  { name: "カポエラー", email: "kapoera-@exam.com", password: "password9" },
  { name: "スピアー", email: "supia-@exam.com", password: "password10" },
  { name: "ドーブル", email: "do-buru@exam.com", password: "password11" },
])

User.all.each do |n|
  profile = n.build_profile
  image = File.open("./public/profile_image/poke1.png")
  n.profile.update!(
    image: image,
  )
end

User.guest
User.guest_admin

User.all.each do |n|
  profile = n.profile
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

4.times do |n|
  name = "#{Faker::House.furniture}"
  color = "#{Faker::Color.color_name}"
  width = "#{Faker::Number.number(digits: 2)}"
  depth = "#{Faker::Number.number(digits: 2)}"
  height = "#{Faker::Number.number(digits: 3)}"
  image = File.open("./public/idea_image/room#{n + 1}.jpeg")
  content = "sample#{n + 14}"
  RoomIdea.create!(
    user_id: "12",
    name:        name,
    color:      color,
    width:      width,
    depth:      depth,
    height:    height,
    image:      image,
    content:  content,
  )
end

4.times do |n|
  name = "#{Faker::House.furniture}"
  color = "#{Faker::Color.color_name}"
  width = "#{Faker::Number.number(digits: 2)}"
  depth = "#{Faker::Number.number(digits: 2)}"
  height = "#{Faker::Number.number(digits: 3)}"
  image = File.open("./public/idea_image/room#{n + 1}.jpeg")
  content = "sample#{n + 14}"
  RoomIdea.create!(
    user_id: "13",
    name:        name,
    color:      color,
    width:      width,
    depth:      depth,
    height:    height,
    image:      image,
    content:  content,
  )
end

User.all.ids.sort.each do |following_id|
  if following_id == 13
    follower_id = "12"
  else
    follower_id = "13"
  end
  Relationship.create(following_id: following_id, follower_id: follower_id)
end

10.times do |n|
  follower_id = "12"
  following_id = "#{n + 1}"
  Relationship.create(following_id: following_id, follower_id: follower_id)
end

10.times do |n|
  follower_id = "#{n + 1}"
  following_id = "12"
  Relationship.create(following_id: following_id, follower_id: follower_id)
end

10.times do |n|
  follower_id = "#{n + 1}"
  following_id = "13"
  Relationship.create(following_id: following_id, follower_id: follower_id)
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
Tag.create!(name: "シンプル")
Tag.create!(name: "おしゃれ")
Tag.create!(name: "かわいい")

User.all.each do |n|
  image = File.open("./public/picture_image/picture#{n.id}.jpeg")
  content = "sample#{n.id}"
  n.pictures.create!(
    image:              image,
    content:          content,
  )
end

Picture.all.ids.sort.each do |picture_id|
  tag_id = picture_id
  PictureTag.create(picture_id: picture_id, tag_id: tag_id)
end

10.times do |n|
  image = File.open("./public/picture_image/picture#{n + 1}.jpeg")
  content = "guest sample#{n + 1}"
  picture_id = "#{n + 14}"
  tag_id = "#{n + 1}"
  Picture.create!(
    user_id: "12",
    image: image,
    content: content,
  )
  PictureTag.create(picture_id: picture_id, tag_id: tag_id)
end

10.times do |n|
  image = File.open("./public/picture_image/picture#{n + 1}.jpeg")
  content = "guest admin sample#{n + 1}"
  picture_id = "#{n + 24}"
  tag_id = "#{n + 1}"
  Picture.create!(
    user_id: "13",
    image: image,
    content: content,
  )
  PictureTag.create(picture_id: picture_id, tag_id: tag_id)
end

Product.create!(
  picture_id: "5",
  name: "SINNERLIG スィネリグ",
  product_url: "https://www.ikea.com/jp/ja/p/sinnerlig-pendant-lamp-bamboo-handmade-80342194/",
  image_url: "https://www.ikea.com/jp/ja/images/products/sinnerlig-pendant-lamp-bamboo-handmade__0919001_pe786542_s5.jpg?f=xl",
  image: File.open("./public/product_image/product1.png")
)
Product.create!(
  picture_id: "6",
  name: "カラーボックス Nカラボ 3段扉付き",
  product_url: "https://www.nitori-net.jp/ec/product/8841036s/",
  image_url: "https://www.nitori-net.jp/ecstatic/image/product/8841036/884103602.jpg?ccp=1661238000&imwidth=415&imdensity=1&ts=20220713182134862",
  image: File.open("./public/product_image/product2.png")
)
Product.create!(
  picture_id: "7",
  name: "無印良品 スタッキングキャビネット",
  product_url: "https://amzn.asia/d/8wmBauA",
  image_url: "https://m.media-amazon.com/images/I/61vUvOCW5wL._AC_SX679_.jpg",
  image: File.open("./public/product_image/product3.png")
)
Product.create!(
  picture_id: "8",
  name: "折りたたみラタンチェア",
  product_url: "https://littlerooms.jp/products/371663?variant=32150915874934&currency=JPY&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&gclid=Cj0KCQjw9ZGYBhCEARIsAEUXITWqbIjI480SDxZidPJeYFMyaNhMZjLcm8BNGwwgYikJP5Y39dk3XWsaArk8EALw_wcB",
)
Product.create!(
  picture_id: "9",
  name: "THE CAFE TABLE",
  product_url: "https://kanademono.design/products/ctb-py-lino?variant=39548770123838&gclid=Cj0KCQjw9ZGYBhCEARIsAEUXITWyNmhrB9jP8GRrJ24SzGq-_6prvA0u-xDAwFqLEz2dJHWH0rtXfzgaAgXZEALw_wcB",
)

5.times do |n|
  User.all.ids.sort.each do |user_id|
    picture_id = "#{n + 1}"
    FavoritePicture.create(user_id: user_id, picture_id: picture_id)
  end
end

5.times do |n|
  User.all.ids.sort.each do |user_id|
    product_id = "#{n + 1}"
    FavoriteProduct.create(user_id: user_id,  product_id:  product_id)
  end
end
