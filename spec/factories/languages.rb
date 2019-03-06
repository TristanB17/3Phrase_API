FactoryBot.define do
  factory :language do
    lang_name { 'Mandarin' }
    abbreviation { 'zh' }

    factory :language_2 do
      lang_name { 'Spanish' }
      abbreviation { 'es' }

      factory :language_3 do
        lang_name { 'German' }
        abbreviation { 'de' }
      end
    end
  end
end
