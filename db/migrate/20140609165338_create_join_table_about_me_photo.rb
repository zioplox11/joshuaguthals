class CreateJoinTableAboutMePhoto < ActiveRecord::Migration
  def change
    create_join_table :about_mes, :photos do |t|
      t.index :photo_id
      t.index :about_me_id
    end
  end
end
