class RollItemService
  class << self
    def random_item(item_type)
      items = RollItem.where(type: item_type)
      #sides = RollItemDiceType.find_by(type: SOME_TYPE).sides
      roll = DiceGateway.roll(sides: 6)
      item = items.first(
        'range_min >= :roll and range_max <= :roll', roll: roll
      )
    end
  end
end