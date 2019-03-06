FactoryBot.define do
  factory :phrase do
    body { '节目剧情关注幽浮学的共同要素' }
    yandex_translation { 'The common elements of the program plot attention UFO school' }
    language_id { 1 }
    subject { '深喉 (X档案剧集)' }
    focus { 'overview' }

    factory :phrase_2 do
      body { 'La trama del espectáculo se centra en los elementos comunes de la escuela' }
      yandex_translation { 'The plot of the show focuses on the common elements of the school' }
      language_id { 2 }
      subject { 'The X-Files' }
      focus { 'overview' }

      factory :phrase_3 do
        body { 'Die Handlung der Show konzentriert sich auf die gemeinsamen Elemente der Schule' }
        yandex_translation { 'The plot of the Show focuses on the common elements of the school' }
        language_id { 3 }
        subject { 'Akte X – Die unheimlichen Fälle des FBI' }
        focus { 'overview' }
      end
    end
  end
end
