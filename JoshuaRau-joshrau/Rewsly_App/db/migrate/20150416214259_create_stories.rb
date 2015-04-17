class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :category
      t.integer :upvotes
      t.string :link

      t.timestamps null: false
    end
  end
end
