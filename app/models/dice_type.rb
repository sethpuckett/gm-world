# == Schema Information
#
# Table name: dice_types
#
#  id         :bigint           not null, primary key
#  item_type  :string           not null
#  sides      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_dice_types_on_item_type  (item_type) UNIQUE
#
class DiceType < ApplicationRecord
  validates :item_type, presence: true, uniqueness: true
  validates :sides, presence: true, numericality: { greater_than: 0 }
end
