# frozen_string_literal: true

class WorldsController < ApplicationController
  def random_government
    @government = RollItemService.random_item(:forms_of_government)
    render :government
  end

  def government
    byebug
    items = RollItem.where(item_type: :forms_of_government)
    @government = items.find { |i| i.content['name'].downcase == name.downcase }
    render json: { error: 'invalid name' }, status: :bad_request if @government.blank?
  end

  def name
    params.require(:name)
  end
end
