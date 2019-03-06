FactoryBot.define do
  factory :user_language do
    user
    language

    factory :user_language_2 do
      user
      language_2

      factory :user_language_3 do
        user
        language_3
      end
    end
  end
end
