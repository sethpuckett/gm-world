# frozen_string_literal: true

class WorldsController < ApplicationController
  def random_government
    @government = RollItemService.random_item(:forms_of_government)
    render :government
  end

  def government
    @government = item(:forms_of_government)
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

  def item(item_type)
    items = RollItem.where(item_type: item_type)
    items.find { |i| i.content['name'].downcase == name.downcase }
  end

  def name
    params.require(:name)
  end
end
