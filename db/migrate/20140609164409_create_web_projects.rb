class CreateWebProjects < ActiveRecord::Migration
  def change
    create_table :web_projects do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
