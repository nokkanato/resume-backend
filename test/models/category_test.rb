# == Schema Information
#
# Table name: categories
#
#  id           :integer          not null, primary key
#  card_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  sport        :string
#  trainer      :string
#  swimmer      :string
#  nurse        :string
#  teacher      :string
#  artist       :string
#  creation     :string
#  developer    :string
#  pilot        :string
#  accountance  :string
#  babysister   :string
#  gambler      :string
#  others       :string
#  media        :string
#  musician     :string
#  photographer :string
#  driver       :string
#  cook         :string
#  gamer        :string
#

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
