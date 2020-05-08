# frozen_string_literal: true

Rails.application.routes.draw do
  get "worlds/government", to: "worlds#government"
  get "worlds/world-shaking-event", to: "worlds#world_shaking_event"
  get "worlds/leader-type", to: "worlds#leader_type"
  get "worlds/cataclysmic-disaster", to: "worlds#cataclysmic_disaster"
  get "worlds/invading-force", to: "worlds#invading_force"
  get "worlds/extinction-or-depletion", to: "worlds#extinction_or_depletion"
  get "worlds/new-organization", to: "worlds#new_organization"
  get "worlds/discovery", to: "worlds#discovery"
end
