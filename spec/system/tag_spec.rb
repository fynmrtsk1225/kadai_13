require 'rails_helper'
RSpec.describe 'タグ機能のテスト', type: :system do
  describe 'タグのCRUD機能のテスト' do
    before do
      @user = FactoryBot.create(:third_user, profile: FactoryBot.build(:profile))
      @tag = FactoryBot.create(:tag)
      visit new_user_session_path
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      click_button 'ログイン'
    end
    it "タグの新規登録ができる" do
      find('.spec_icon').hover
      click_on 'タグ管理'
      click_on '新規タグ投稿'
      fill_in 'tag_name',  with: 'new_test'
      click_on '登録する'
      expect(page).to have_content 'new_test'
    end
    it "タグの詳細を確認できる" do
      visit tag_path(@tag)
      expect(page).to have_content 'test1'
    end
    it "タグの編集ができる" do
      find('.spec_icon').hover
      click_on 'タグ管理'
      click_on '編集'
      fill_in 'tag_name',  with: 'edit_test'
      click_on '更新する'
      expect(page).to have_content 'edit_test'
    end
    it "タグの削除ができる" do
      find('.spec_icon').hover
      click_on 'タグ管理'
      click_on '削除'
      expect(page.accept_confirm).to eq "削除してもいいですか?"
      expect(page).not_to have_content 'test1'
    end
  end
end