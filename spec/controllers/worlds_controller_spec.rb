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

  describe '#random_government' do
    it_behaves_like 'a random item endpoint', :forms_of_government, :random_government, :government
  end

  describe '#random_world_shaking_event' do
    it_behaves_like 'a random item endpoint', :world_shaking_events, :random_world_shaking_event, :event
  end

  describe '#random_leader_type' do
    it_behaves_like 'a random item endpoint', :leader_types, :random_leader_type, :leader_type
  end

  describe '#random_cataclysmic_disaster' do
    it_behaves_like 'a random item endpoint', :cataclysmic_disasters, :random_cataclysmic_disaster, :disaster
  end

  describe '#random_invading_force' do
    it_behaves_like 'a random item endpoint', :invading_forces, :random_invading_force, :force
  end

  describe '#government' do
    let(:name_2) { 'name_2' }
    let(:params) { { name: name_2 } }
    let(:content) { { government: name_2 } }
    let(:expected_response) { content.to_json }
    let!(:government_2) do
      FactoryBot.create(
        :roll_item, item_type: :forms_of_government, content: content, range_min: 2, range_max: 2
      )
    end

    it 'returns government' do
      get :government, params: params, as: :json
      expect(response.body).to eq(expected_response)
    end
  end
end
