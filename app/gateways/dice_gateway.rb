# frozen_string_literal: true

class DiceGateway
  include HTTParty

  class << self
    def roll(count: 1, sides:)
      raise ArgumentError, 'Invalid Roll Input' unless input_valid?(count, sides)

      response = HTTParty.get(dice_service_url(count, sides), format: :plain)
      json_response = JSON.parse(response, symbolize_names: true)
      json_response[:total]
    end

    private

    def input_valid?(count, sides)
      count.between?(1, 100) && Constant.valid_dice_sides?(sides)
    end

    def dice_service_url(count, sides)
      "#{Settings.dice_service.base_url}/dice/roll?count=#{count}&sides=#{sides}"
    end
  end
end
