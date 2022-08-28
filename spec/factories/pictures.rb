FactoryBot.define do
  factory :picture do
    content { 'test1' }
    association :user
    
    after(:build) do |picture|
      picture.image = File.open("spec/images/test.png")
    end
  end
  factory :second_picture, class: Picture do
    content { 'test2' }
    association :user
    
    after(:build) do |picture|
      picture.image = File.open("spec/images/test.png")
    end
  end
end