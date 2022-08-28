# require 'rails_helper'
# RSpec.describe 'ユーザー機能のテスト', type: :system do
  # describe 'ユーザーのアカウント登録機能のテスト' do
  #   it '新規登録後、ユーザー用トップ画面に遷移する' do
  #     visit new_user_registration_path
  #     attach_file 'user_profile_attributes_image', "#{Rails.root}/spec/images/test.png"
  #     fill_in 'user_name', with: 'test_user_01'
  #     fill_in 'user_email', with: 'test_user_01@exam.com'
  #     fill_in 'user_password', with: '12345678'
  #     fill_in 'user_password_confirmation', with: '12345678'
  #     click_on 'アカウント登録'
  #     expect(page).to have_content '理想の部屋をつくるには'
  #   end
  # end

  # describe 'ユーザーのログイン機能のテスト' do
  #   before do
  #     profile = FactoryBot.build(:profile)
  #     @user = FactoryBot.create(:user, profile: profile)
  #   end
  #   it '​ログインするとユーザー用トップ画面に遷移する' do
  #     visit new_user_session_path
  #     fill_in 'user_email', with: @user.email
  #     fill_in 'user_password', with: @user.password
  #     click_button 'ログイン'
  #     expect(page).to have_content '理想の部屋をつくるには'
  #   end
  # end

  # context "​ログインせずタスク一覧画面に飛ぼうとした場合" do
  #   it 'ログイン画面に遷移する​' do
  #     visit pictures_path
  #     expect(page).to have_content 'ログイン'
  #   end
  # end

  # context "ログイン後、アカウント登録画面にアクセスしようとした場合" do
  #   before do
  #     profile = FactoryBot.build(:profile)
  #     @user = FactoryBot.create(:user, profile: profile)
  #     visit new_user_session_path
  #   end
  #   it "トップページにリダイレクトされる" do
  #     fill_in 'user_email', with: @user.email
  #     fill_in 'user_password', with: @user.password
  #     click_button 'ログイン'
  #     expect(page).to have_content 'ログインしました'
  #     visit new_user_registration_path
  #     expect(page).to have_content 'すでにログインしています。'
  #   end
  # end

#   context "ログイン後、ログアウトをクリックした場合" do
#     before do
#       profile = FactoryBot.build(:profile)
#       @user = FactoryBot.create(:user, profile: profile)
#       visit new_user_session_path
#     end
#     scenario 'ログアウトできる', js: true do
#       fill_in 'user_email', with: @user.email
#       fill_in 'user_password', with: @user.password
#       click_button 'ログイン'
#       expect(page).to have_content 'ログインしました'
#       find('.spec_icon').hover
#       click_on 'ログアウト'
#       expect(page).to have_content "ログアウトしました"
#     end
#   end
# end





