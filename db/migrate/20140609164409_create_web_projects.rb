class CreateWebProjects < ActiveRecord::Migration
  def change
    create_table :web_projects do |t|
      t.string :name
      t.text :description
      t.string :project_url
      t.string :key_dev_element
      t.timestamps
    end
  end
end
