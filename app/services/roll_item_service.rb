# frozen_string_literal: true

class RollItemService
  class << self
    def random_item(item_type)
      # TODO: lookup sides based on new model (RollItemDiceType)
      # sides = RollItemDiceType.find_by(type: SOME_TYPE).sides
      roll = DiceGateway.roll(sides: 100)
      RollItem.find_by(
        item_type: item_type,
        range_min: 1..roll,
        range_max: roll..100
      )
    end
  end
end
