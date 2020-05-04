class RollItemService
  class << self
    def random_item(item_type)
      items = RollItem.where(type: item_type)
      #sides = RollItemDiceType.find_by(type: SOME_TYPE).sides
      roll = DiceGateway.roll(sides: 100)
      #RollItem.first
      RollItem.find_by(
        item_type: item_type,
        range_min: 1..roll,
        range_max: roll..100
      )
      # item = RollItem.first(
      #   'item_type = :item_type and range_min >= :roll and range_max <= :roll',
      #   item_type: item_type,
      #   roll: roll
      # )
    end
  end
end