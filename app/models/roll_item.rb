# frozen_string_literal: true

# == Schema Information
#
# Table name: roll_items
#
#  id         :bigint           not null, primary key
#  content    :jsonb            not null
#  item_type  :string           not null
#  range_max  :integer          not null
#  range_min  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_roll_items_on_content                                (content) USING gin
#  index_roll_items_on_item_type_and_range_min_and_range_max  (item_type,range_min,range_max)
#
class RollItem < ApplicationRecord
  validates :item_type, presence: true, uniqueness: { scope: %i[range_min range_max] }
  validates :content, presence: true
  validates :range_min, presence: true, numericality: { greater_than: 0 }
  validates :range_max, presence: true, numericality: { greater_than: 0 }
end
