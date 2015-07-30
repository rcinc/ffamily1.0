class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price_in_cents
      t.string :artist
      t.timestamps null: false
      t.references :artist, index: true, foreign_key: true
    end
  end
end
