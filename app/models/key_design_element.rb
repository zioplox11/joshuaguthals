# == Schema Information
#
# Table name: key_design_elements
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  description  :text
#  dev_tool_url :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#



class KeyDesignElement < ActiveRecord::Base
    has_and_belongs_to_many :web_projects
end
