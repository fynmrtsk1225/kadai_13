# require 'rails_helper'

# describe 'pictureモデルのバリデーションテスト', type: :model do
#   it '商品名の入力欄が空の場合、バリデーションにひっかかる' do
#     user = FactoryBot.create(:user)
#     picture = Picture.new
#     product = picture.products.build
#     picture = Picture.new(image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png')), content: 'test', user_id: user.id,
#                           products_attributes: [name: nil, product_url: 'https://test.jp', image_url: 'https://test.jp', image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png'))])
#     picture.save
#     expect(picture).not_to be_valid
#   end
#   it '商品詳細URLの入力欄が空欄の場合、バリデーションにひっかかる' do
#     user = FactoryBot.create(:user)
#     picture = Picture.new
#     product = picture.products.build
#     picture = Picture.new(image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png')), content: 'test', user_id: user.id,
#                           products_attributes: [name: 'test', product_url: nil, image_url: 'https://test.jp', image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png'))])
#     picture.save
#     expect(picture).not_to be_valid
#   end
#   it '全ての項目が入力されていれば、登録できる' do
#     user = FactoryBot.create(:user)
#     picture = Picture.new
#     product = picture.products.build
#     picture = Picture.new(image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png')), content: 'test', user_id: user.id,
#                           products_attributes: [name: 'test', product_url: 'https://test.jp', image_url: 'https://test.jp', image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png'))])
#     picture.save
#     expect(picture).to be_valid
#   end
# end