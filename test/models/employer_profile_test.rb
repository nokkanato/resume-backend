# == Schema Information
#
# Table name: employer_profiles
#
#  id             :integer          not null, primary key
#  username       :string
#  postion_need   :string
#  requirement    :string
#  salary_suggest :string
#  description    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  fb_name        :string
#  first_name     :string
#  last_name      :string
#

require 'test_helper'

class EmployerProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
