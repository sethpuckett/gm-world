# frozen_string_literal: true

class WorldController < ApplicationController
  def government
    RollItemService.random_item(:forms_of_government)
  end
end
