FactoryBot.define do
  factory :user do
    username { "CCR" }
    email { "coolguy@gmail.com" }
    password { '87654321' }

    factory :user_2 do
      username { "Dave" }
      email { "hiimdave@dave.com" }
      password { 'asdfghjk' }
    end
  end
end
