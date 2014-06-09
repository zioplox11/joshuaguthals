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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :web_project do
    name "MyString"
    description "MyText"
  end
end
