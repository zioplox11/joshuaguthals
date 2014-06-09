class CreateJoinTableWebProjectPhoto < ActiveRecord::Migration
  def change
    create_join_table :web_projects, :photos do |t|
      t.index :photo_id
      t.index :web_project_id
    end
  end
end
