# frozen_string_literal: true

FactoryBot.define do
  factory :roll_item do
    type { 'ROLL_TYPE' }
    content { { name: 'name', description: 'description' } }
    range_min { 1 }
    range_max { 6 }
  end
end
