# require 'rails_helper'

# describe 'tagモデルのバリデーションテスト', type: :model do
#   it 'タグ名の入力欄が空の場合、バリデーションにひっかかる' do
#     tag = Tag.create(name: nil)
#     expect(tag).not_to be_valid
#   end
#   it '全ての項目が入力されていれば、登録できる' do
#     tag = Tag.create(name: 'test')
#     expect(tag).to be_valid
#   end
# end