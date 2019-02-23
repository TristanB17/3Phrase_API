class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.text :body
      t.text :yandex_translation
      t.references :language, foreign_key: true
      t.string :subject
      t.string :focus

      t.timestamps
    end
  end
end
