# == Schema Information
#
# Table name: web_projects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class WebProject < ActiveRecord::Base
    has_and_belongs_to_many :photos
end
