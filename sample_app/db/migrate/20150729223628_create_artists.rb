class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description
      t.text :contact

      t.timestamps null: false
    end
  end
end
