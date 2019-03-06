FactoryBot.define do
  factory :phrase do
    body { '节目剧情关注幽浮学的共同要素' }
    yandex_translation { 'The common elements of the program plot attention UFO school' }
    language_id { 1 }
    subject { '深喉 (X档案剧集)' }
    focus { 'overview' }
  end
end
