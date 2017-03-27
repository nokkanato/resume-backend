# == Schema Information
#
# Table name: cards
#
#  id              :integer          not null, primary key
#  last_name       :string
#  specialties     :string
#  age             :string
#  education       :string
#  experience      :string
#  expected_salary :string
#  fb_name         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  first_name      :string
#  description     :string
#

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
