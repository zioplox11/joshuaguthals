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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :web_project do
    name "MyString"
    description "MyText"
  end
end
