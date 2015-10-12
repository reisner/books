class CreateEditions < ActiveRecord::Migration
  def change
    create_table :editions do |t|
      t.integer :pub_year
      t.string :edition_type
      t.integer :book_id

      t.index :book_id

      t.timestamps null: false
    end
  end
end
