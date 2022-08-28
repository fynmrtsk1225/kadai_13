# require 'rails_helper'

# describe 'profileモデルのバリデーションテスト', type: :model do
#   it '画像の入力欄が空の場合、バリデーションにひっかかる' do
#     user = FactoryBot.create(:user)
#     profile = user.build_profile
#     profile.update(image: nil , content: 'testtest', age: '10代', constitution: 'Single', floor: '1K', square: '20~25㎡', user_id: '1')
#     expect(profile).not_to be_valid
#   end
#   it 'contentが255文字以上の場合、バリデーションにひっかかる' do
#     user = FactoryBot.create(:user)
#     profile = user.build_profile
#     profile.update(image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png')), content: "a" * 256, age: '10代', constitution: 'Single', floor: '1K', square: '20~25㎡', user_id: user.id)
#     expect(profile).not_to be_valid
#   end
#   it '全ての項目が入力されていれば、登録できる' do
#     user = FactoryBot.create(:user)
#     profile = user.build_profile
#     profile.update(image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png')), content: 'testtest', age: '10代', constitution: 'Single', floor: '1K', square: '20~25㎡', user_id: user.id)
#     expect(profile).to be_valid
#   end
# end