class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :publisher, null: false
      t.integer :price, null: false
      t.string :genre, null: false
      t.text :summary
      t.string :image, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
