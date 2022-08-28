FactoryBot.define do
  factory :user do
    name { 'test00' }
    email { 'test00@exam.com' }
    password { 'test00' }
    admin { true }
  end

  factory :second_user, class: User do
    name { 'test14' }
    email { 'test14@exam.com' }
    password { 'test14' }
    admin { false }
  end
end