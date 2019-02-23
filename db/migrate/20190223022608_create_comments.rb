class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :likes
      t.references :translation, foreign_key: true
    end
  end
end
