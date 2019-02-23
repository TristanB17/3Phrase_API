class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :likes, default: 0
      t.references :translation, foreign_key: true
    end
  end
end
