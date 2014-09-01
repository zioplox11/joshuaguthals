class CreateKeyDesignElements < ActiveRecord::Migration
  def change
    create_table :key_design_elements do |t|
      t.string :name
      t.text :description
      t.string :dev_tool_url
      t.timestamps
    end
  end
end
