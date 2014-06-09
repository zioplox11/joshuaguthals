# == Schema Information
#
# Table name: about_mes
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :about_me do
    name "MyString"
    description "MyText"
  end
end
