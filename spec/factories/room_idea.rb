FactoryBot.define do
  factory :room_idea do
    name {'testtest'}
    color {'白'}
    width {'100'}
    depth {'100'}
    height {'100'}
    content {'test'}
    association :user

    after(:build) do |room_idea|
      room_idea.image = File.open("spec/images/test.png")
    end
  end
end 