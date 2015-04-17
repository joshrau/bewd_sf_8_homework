class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :painting_title
      t.string :museum
      t.string :artist
      t.string :url

      t.timestamps null: false
    end
  end
end
