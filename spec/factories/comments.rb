FactoryBot.define do
  factory :comment do
    translation_id { 1 }
    body { 'Sounds right' }
    likes { 2 }

    factory :comment_2 do
      translation_id { 1 }
      body { 'Looks good' }
      likes { 1 }


      factory :comment_3 do
        translation_id { 1 }
        body { 'I disagree' }
        likes { 0 }
      end
    end
  end
end
