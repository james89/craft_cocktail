class CreateCocktailsTable < ActiveRecord::Migration
  def up
    create_table :cocktails do |t|
      t.string :name
      t.text :recipe
      t.string :flavor
      t.string :liquor
      t.timestamps
  end

  def down
    drop_table :cocktails
  end
end
