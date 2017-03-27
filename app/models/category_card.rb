# == Schema Information
#
# Table name: category_cards
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  category_name :string
#  user_id       :string
#

class CategoryCard < ApplicationRecord
  # belongs_to :user
  # belongs_to :category
end
