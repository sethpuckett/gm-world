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

  def extinction_or_depletion
    @lost_resource = RollItemService.random_item(:extinction_or_depletion)
  end

  def new_organization
    @organization = RollItemService.random_item(:new_organizations)
  end

  def discovery
    @discovery = RollItemService.random_item(:discoveries)
  end
end
