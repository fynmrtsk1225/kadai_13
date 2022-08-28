# require 'rails_helper'

# describe 'pictureモデルのバリデーションテスト', type: :model do
#   it '画像の入力欄が空の場合、バリデーションにひっかかる' do
#     user = FactoryBot.create(:user)
#     picture = Picture.create(image: nil , content: 'testtest', user_id: user.id)
#     expect(picture).not_to be_valid
#   end
#   it 'contentが255文字以上の場合、バリデーションにひっかかる' do
#     user = FactoryBot.create(:user)
#     picture = Picture.create(image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png')) , content: "a" * 256, user_id: user.id)
#     expect(picture).not_to be_valid
#   end
#   it '全ての項目が入力されていれば、登録できる' do
#     user = FactoryBot.create(:user)
#     picture = Picture.create(image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png')) , content: 'test', user_id: user.id)
#     expect(picture).to be_valid
#   end
# end