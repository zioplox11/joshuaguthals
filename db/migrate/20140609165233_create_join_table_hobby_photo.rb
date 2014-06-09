class CreateJoinTableHobbyPhoto < ActiveRecord::Migration
  def change
    create_join_table :hobbies, :photos do |t|
      t.index :photo_id
      t.index :hobby_id
    end
  end
end
