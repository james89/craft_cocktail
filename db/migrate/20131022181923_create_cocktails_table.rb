class CreateCocktailsTable < ActiveRecord::Migration
  def up
    create_table :cocktails do |t|
      t.string :name
      t.text :description
      t.text :recipe
      t.string :flavor
      t.string :liquor
      t.string :photo_url
      t.timestamps
    end
  end

  def down
    drop_table :cocktails
  end
end
