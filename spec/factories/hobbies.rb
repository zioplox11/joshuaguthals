# == Schema Information
#
# Table name: hobbies
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  finder      :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hobby do
    name "MyString"
    description "MyText"
  end
end
