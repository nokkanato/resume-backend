# == Schema Information
#
# Table name: employee_profiles
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string
#  address     :string
#  email       :string
#  phone_no    :string
#

require 'test_helper'

class EmployeeProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
