# == Schema Information
#
# Table name: web_projects
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  description     :text
#  project_url     :string(255)
#  key_dev_element :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class WebProject < ActiveRecord::Base
    has_and_belongs_to_many :photos
    has_and_belongs_to_many :key_design_elements
end
