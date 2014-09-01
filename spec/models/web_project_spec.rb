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

require 'spec_helper'

describe WebProject do
  pending "add some examples to (or delete) #{__FILE__}"
end
