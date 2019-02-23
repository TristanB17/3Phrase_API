class CreateTranslations < ActiveRecord::Migration[5.2]
  def change
    create_table :translations do |t|
      t.references :phrase, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :likes
      t.text :output

      t.timestamps
    end
  end
end
