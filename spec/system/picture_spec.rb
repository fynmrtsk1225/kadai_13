# require 'rails_helper'
# RSpec.describe '写真機能のテスト', type: :system do
#   let!(:user) { FactoryBot.create(:user, profile: FactoryBot.build(:profile)) }
#   let!(:tag) { FactoryBot.create(:tag) }
#   describe '新規投稿機能' do
#     before do
#       visit new_user_session_path
#       fill_in 'user_email', with: 'test00@exam.com'
#       fill_in 'user_password', with: 'test00'
#       click_button 'ログイン'
#     end
#     context '写真を新規投稿した場合' do
#       it '作成したタスクが表示される' do
#         visit new_picture_path
#         attach_file 'picture_image', "#{Rails.root}/spec/images/test.png"
#         fill_in 'picture_content', with: 'test_content'
#         select 'test1', from: 'picture_picture_tags_attributes_0_tag_id'
#         click_on '登録する'
#         expect(page).to have_content 'test_content'
#       end
#     end
#     context '写真を商品情報も同時に新規投稿した場合' do
#       it '作成した商品情報が表示される' do
#         visit new_picture_path
#         attach_file 'picture_image', "#{Rails.root}/spec/images/test.png"
#         fill_in 'picture_content', with: 'test_content'
#         select 'test1', from: 'picture_picture_tags_attributes_0_tag_id'
#         click_link '商品追加'
#         fill_in '商品名', with: 'チェア'
#         fill_in '商品詳細URL', with: 'https://test'
#         click_on '登録する'
#         expect(page).to have_content 'test_content'
#       end
#     end
#   end
#   describe '一覧表示機能' do
#     let!(:picture) { FactoryBot.create(:picture, user: user) }
#     let!(:second_picture) { FactoryBot.create(:second_picture, user: user) }
#     before do
#       visit new_user_session_path
#       fill_in 'user_email', with: 'test00@exam.com'
#       fill_in 'user_password', with: 'test00'
#       click_button 'ログイン'
#     end
#     context '一覧画面に遷移した場合' do
#       it '投稿済みの写真一覧が表示される' do
#         visit pictures_path
#         expect(page).to have_content 'test00'
#       end
#     end
#     context 'マイページに遷移した場合' do
#       it '投稿済みの写真一覧が表示される' do
#         visit user_path(user)
#         expect(page).to_not have_content 'まだ投稿がありません'
#       end
#     end
#   end
#   describe '検索機能' do
#     before do
#       visit new_user_session_path
#       fill_in 'user_email', with: 'test00@exam.com'
#       fill_in 'user_password', with: 'test00'
#       click_button 'ログイン'
#       visit new_picture_path
#       attach_file 'picture_image', "#{Rails.root}/spec/images/test.png"
#       fill_in 'picture_content', with: 'test_content'
#       select 'test1', from: 'picture_picture_tags_attributes_0_tag_id'
#       click_link '商品追加'
#       fill_in '商品名', with: 'チェア'
#       fill_in '商品詳細URL', with: 'https://test'
#       click_on '登録する'
#     end
#     context '写真検索をした場合' do 
#       it 'タグで検索できる' do
#         visit pictures_path
#         select 'test1', from: 'q_tags_id_eq'
#         click_on '検索'
#         expect(page).to have_content 'test00'
#       end
#     end
#     context '商品検索をした場合' do 
#       it 'あいまい検索ができる' do
#         visit products_path
#         fill_in '商品名', with: 'チェア'
#         click_on '検索'
#         expect(page).to have_content 'チェア'
#       end
#     end
#     describe '詳細表示機能' do
#       context '任意の詳細画面に遷移した場合' do
#         it '該当写真の詳細が表示される' do
#           expect(page).to have_content 'test_content'
#         end
#         it '該当商品の詳細が表示される' do
#           visit products_path
#           page.first(".spec_product").click
#           expect(page).to have_content '販売情報'
#         end
#       end
#     end
#   end
#   describe '削除機能' do
#     let!(:picture) { FactoryBot.create(:picture, user: user ) }
#     before do
#       visit new_user_session_path
#       fill_in 'user_email', with: 'test00@exam.com'
#       fill_in 'user_password', with: 'test00'
#       click_button 'ログイン'
#     end
#     context '削除ボタンをクリックした場合' do
#       it '写真投稿が削除できる' do
#         visit user_path(user)
#         page.first(".spec_picture").click
#         click_on '削除'
#         expect(page.accept_confirm).to eq "削除してもいいですか?"
#         expect(page).to have_content '削除されました'
#       end
#     end
#   end
# end
