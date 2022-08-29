FactoryBot.define do
  factory :tag do
    name { 'test1' }
  end

  factory :second_tag, class: Tag do
    name { 'test2' }
  end
end