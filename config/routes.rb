# frozen_string_literal: true

Rails.application.routes.draw do
  get "worlds/government", to: "worlds#random_government"
  get "worlds/government/:name", to: "worlds#government"

  get "worlds/world-shaking-event", to: "worlds#random_world_shaking_event"
end
