FactoryBot.define do
  factory :profile do
    content {'testtest'}
    age {'10代'}
    constitution {'Single'}
    floor {'1K'}
    square {'20~25㎡'}
    association :user

    after(:build) do |profile|
      profile.image = File.open("spec/images/test.png")
    end
  end
end 