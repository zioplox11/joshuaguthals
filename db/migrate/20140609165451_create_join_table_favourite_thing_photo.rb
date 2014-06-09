class CreateJoinTableFavouriteThingPhoto < ActiveRecord::Migration
  def change
    create_join_table :favourite_things, :photos do |t|
      t.index :photo_id
      t.index :favourite_thing_id
    end
  end
end
