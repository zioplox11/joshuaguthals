class CreateJoinTableWebProjectKeyDesignElement < ActiveRecord::Migration
  def change
    create_join_table :web_projects, :key_design_elements do |t|
      t.index :key_design_element_id
      t.index :web_project_id
    end
  end
end
