class CreateAboutMes < ActiveRecord::Migration
  def change
    create_table :about_mes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
