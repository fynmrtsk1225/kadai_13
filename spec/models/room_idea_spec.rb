require 'rails_helper'

describe 'profileモデルのバリデーションテスト', type: :model do
  it '名前の入力欄が空の場合、バリデーションにひっかかる' do
    user = FactoryBot.create(:user)
    room_idea = RoomIdea.create(name: nil, color: 'test', width: '100', depth: '100', height: '100', image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png')), content: 'testtest', user_id: user.id)
    expect(room_idea).not_to be_valid
  end
  it '名前が50文字以上の場合、バリデーションにひっかかる' do
    user = FactoryBot.create(:user)
    room_idea = RoomIdea.create(name: "a" * 51, color: 'test', width: '100', depth: '100', height: '100', image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png')), content: 'testtest', user_id: user.id)
    expect(room_idea).not_to be_valid
  end
  it 'カラーが50文字以上の場合、バリデーションにひっかかる' do
    user = FactoryBot.create(:user)
    room_idea = RoomIdea.create(name: 'test', color: "a" * 101, width: '100', depth: '100', height: '100', image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png')), content: 'testtest', user_id: user.id)
    expect(room_idea).not_to be_valid
  end
  it '備考が255文字以上の場合、バリデーションにひっかかる' do
    user = FactoryBot.create(:user)
    room_idea = RoomIdea.create(name: 'test', color: 'test', width: '100', depth: '100', height: '100', image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png')), content: "a" * 256, user_id: user.id)
    expect(room_idea).not_to be_valid
  end
  it '全ての項目が入力されていれば、登録できる' do
    user = FactoryBot.create(:user)
    room_idea = RoomIdea.create(name: 'test', color: 'test', width: '100', depth: '100', height: '100', image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png')), content: 'testtest', user_id: user.id)
    expect(room_idea).to be_valid
  end
end