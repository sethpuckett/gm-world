# frozen_string_literal: true

class WorldsController < ApplicationController
  def random_government
    @government = RollItemService.random_item(:forms_of_government)
    render :government
  end

  def government
    @government = item(:forms_of_government, 'government')
    render json: { error: 'invalid name' }, status: :bad_request if @government.blank?
  end

  def random_world_shaking_event
    @event = RollItemService.random_item(:world_shaking_events)
    render :world_shaking_event
  end

  def random_leader_type
    @leader = RollItemService.random_item(:leader_types)
    render :leader_type
  end

  def random_cataclysmic_disaster
    @disaster = RollItemService.random_item(:cataclysmic_disasters)
    render :cataclysmic_disaster
  end

  def random_invading_force
    @force = RollItemService.random_item(:invading_forces)
    render :invading_force
  end

  def item(item_type, key)
    items = RollItem.where(item_type: item_type)
    items.find { |i| i.content[key].downcase == name.downcase }
  end

  def name
    params.require(:name)
  end
end
