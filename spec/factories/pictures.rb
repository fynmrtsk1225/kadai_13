FactoryBot.define do
  factory :picture do
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/test.png')) }
    content { 'testtest' }
    user_id { "#{FactoryBot.create(:user).id}" }
  end
end