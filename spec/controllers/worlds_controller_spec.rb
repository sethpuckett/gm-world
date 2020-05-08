# frozen_string_literal: true

require 'rails_helper'

RSpec.shared_examples 'a random item endpoint' do |item_type, route, json_key|
  let(:name) { 'name' }
  let(:expected_response) { content.to_json }
  let(:content) do
    c = {}
    c[json_key] = name
    c
  end
  let!(:item) do
    FactoryBot.create(
      :roll_item, item_type: :item_type, content: content, range_min: 1, range_max: 1
    )
  end

  before do
    allow(RollItemService).to(receive(:random_item).with(item_type).and_return(item))
  end

  it 'returns formatted item' do
    get route, as: :json
    expect(response.body).to eq(expected_response)
  end
end

RSpec.describe WorldsController, type: :controller do
  render_views

  describe '#government' do
    it_behaves_like 'a random item endpoint', :forms_of_government, :government, :government
  end

  describe '#world_shaking_event' do
    it_behaves_like 'a random item endpoint', :world_shaking_events, :world_shaking_event, :event
  end

  describe '#leader_type' do
    it_behaves_like 'a random item endpoint', :leader_types, :leader_type, :leader_type
  end

  describe '#cataclysmic_disaster' do
    it_behaves_like 'a random item endpoint', :cataclysmic_disasters, :cataclysmic_disaster, :disaster
  end

  describe '#invading_force' do
    it_behaves_like 'a random item endpoint', :invading_forces, :invading_force, :force
  end

  describe '#extinction_or_depletion' do
    it_behaves_like 'a random item endpoint', :extinction_or_depletion, :extinction_or_depletion, :lost_resource
  end

  describe '#new_organization' do
    it_behaves_like 'a random item endpoint', :new_organizations, :new_organization, :organization
  end

  describe '#discovery' do
    it_behaves_like 'a random item endpoint', :discoveries, :discovery, :discovery
  end
end
