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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    name "MyString"
    description "MyText"
    image_url "MyString"
  end
end
