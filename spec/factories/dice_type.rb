# frozen_string_literal: true

FactoryBot.define do
  factory :dice_type do
    item_type { 'roll_type' }
    sides { 6 }
  end
end
