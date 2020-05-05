# frozen_string_literal: true

class Constant
  class << self
    def dice_sides
      [4, 6, 8, 10, 12, 20, 100]
    end

    def valid_dice_sides?(val)
      dice_sides.include?(val)
    end

    def roll_item_types
      %i[
        forms_of_government
        world_shaking_events
      ]
    end
  end
end
