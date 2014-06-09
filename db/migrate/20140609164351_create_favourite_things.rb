class CreateFavouriteThings < ActiveRecord::Migration
  def change
    create_table :favourite_things do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
