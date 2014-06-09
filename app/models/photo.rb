# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  image_url   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Photo < ActiveRecord::Base
    has_and_belongs_to_many :hobbies
    has_and_belongs_to_many :about_mes
    has_and_belongs_to_many :web_projects
    has_and_belongs_to_many :favourite_things
end
