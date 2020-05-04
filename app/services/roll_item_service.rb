# frozen_string_literal: true

class RollItemService
  class << self
    def random_item(item_type)
      sides = DiceType.find_by(item_type: item_type).sides
      roll = DiceGateway.roll(sides: sides)
      RollItem.find_by(
        item_type: item_type,
        range_min: 1..roll,
        range_max: roll..100
      )
    end
  end
end
