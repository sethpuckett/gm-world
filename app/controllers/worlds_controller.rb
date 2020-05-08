# frozen_string_literal: true

class WorldsController < ApplicationController
  def government
    @government = RollItemService.random_item(:forms_of_government)
  end

  def world_shaking_event
    @event = RollItemService.random_item(:world_shaking_events)
  end

  def leader_type
    @leader = RollItemService.random_item(:leader_types)
  end

  def cataclysmic_disaster
    @disaster = RollItemService.random_item(:cataclysmic_disasters)
  end

  def invading_force
    @force = RollItemService.random_item(:invading_forces)
  end
end
