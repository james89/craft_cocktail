class CreateFavoritesTable < ActiveRecord::Migration
  def up
    create_table :favorites do |t|
      t.integer :cocktail_id
      t.integer :user_id
      t.timestamps
  end

  def down
    drop_table :favorites
  end
end
