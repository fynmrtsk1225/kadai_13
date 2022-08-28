FactoryBot.define do
  factory :profile do
    association :user
    content {'testtest'}
    age {'10代'}
    constitution {'Single'}
    floor {'1K'}
    square {'20~25㎡'}
    
    after(:build) do |profile|
      profile.image.attach(io: File.open('spec/images/test.png'), filename: 'test.ong')
    end
  end
end 