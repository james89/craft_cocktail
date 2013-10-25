class CreateBarsTable < ActiveRecord::Migration
  def up
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.string :bar_url
      t.text :bar_info
      t.float :latitude
      t.float :longitude
    end
  end

  def down
  end
end
