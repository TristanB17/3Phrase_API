FactoryBot.define do
  factory :translation do
    phrase
    user
    output { 'The plot of the episode is focused around elements of ufology' }
    likes { 2 }

    factory :translation_2 do
      phrase_2
      user
      output { 'The plot of the episode is focused around elements of ufology' }
      likes { 2 }


      factory :translation_3 do
        phrase_3
        user
        output { 'The plot of the episode is focused around elements of ufology' }
        likes { 2 }
      end
    end
  end
end
