# require 'rails_helper'
# RSpec.describe 'ルームアイデア機能のテスト', type: :system do
#   describe 'ルームアイデアのCRUD機能のテスト' do
#     before do
#       @user = FactoryBot.create(:second_user, profile: FactoryBot.build(:profile))
#       @room_idea = FactoryBot.create(:room_idea, user: @user)
#       visit new_user_session_path
#       fill_in 'user_email', with: @user.email
#       fill_in 'user_password', with: @user.password
#       click_button 'ログイン'
#     end
#     it "ルームアイデアの新規登録ができる" do
#       click_on '欲しいものリストをつくる'
#       attach_file 'room_idea_image', "#{Rails.root}/spec/images/test.png"
#       fill_in 'room_idea_name',  with: 'test'
#       click_on '登録する'
#       expect(page).to have_content 'test'
#     end
#     it "ルームアイデアの詳細を確認できる" do
#       find('.spec_all_icon').hover
#       click_on '私のルームアイデア'
#       click_on '詳細'
#       expect(page).to have_content 'testtest'
#     end
#     it "ルームアイデアの編集ができる" do
#       find('.spec_all_icon').hover
#       click_on '私のルームアイデア'
#       click_on '編集'
#       fill_in 'room_idea_name',  with: 'test02'
#       click_on '更新する'
#       expect(page).to have_content 'test02'
#     end
#     it "ルームアイデアの削除ができる" do
#       find('.spec_all_icon').hover
#       click_on '私のルームアイデア'
#       click_on '削除'
#       expect(page.accept_confirm).to eq "削除してもいいですか?"
#       expect(page).not_to have_content 'testtest'
#     end
#   end
# end