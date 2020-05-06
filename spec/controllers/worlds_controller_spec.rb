# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WorldsController, type: :controller do
  let(:name) { 'name_1' }
  let(:name_2) { 'name_2' }
  let!(:government) do
    FactoryBot.create(
      :roll_item, item_type: :forms_of_government, content: { name: name }, range_min: 1, range_max: 1
    )
  end
  let!(:world_shaking_event) do
    FactoryBot.create(
      :roll_item, item_type: :world_shaking_events, content: { name: name }, range_min: 1, range_max: 1
    )
  end
  let!(:leader_type) do
    FactoryBot.create(
      :roll_item, item_type: :leader_types, content: { name: name }, range_min: 1, range_max: 1
    )
  end

  describe '#random_government' do
    render_views

    let(:expected_response) do
      { name: government.content['name'] }.to_json
    end

    before do
      allow(RollItemService).to(
        receive(:random_item).with(:forms_of_government).and_return(government)
      )
    end

    it 'returns government' do
      get :random_government, as: :json
      expect(response.body).to eq(expected_response)
    end
  end

  describe '#government' do
    render_views

    let(:params) { { name: name_2 } }
    let!(:government_2) do
      FactoryBot.create(
        :roll_item, item_type: :forms_of_government, content: { name: name_2 }, range_min: 2, range_max: 2
      )
    end
    let(:expected_response) do
      { name: government_2.content['name'] }.to_json
    end

    it 'returns government' do
      get :government, params: params, as: :json
      expect(response.body).to eq(expected_response)
    end
  end

  describe '#random_world_shaking_event' do
    render_views

    let(:expected_response) do
      { name: world_shaking_event.content['name'] }.to_json
    end

    before do
      allow(RollItemService).to(
        receive(:random_item).with(:world_shaking_events).and_return(world_shaking_event)
      )
    end

    it 'returns world_shaking_event' do
      get :random_world_shaking_event, as: :json
      expect(response.body).to eq(expected_response)
    end
  end

  describe '#random_leader_type' do
    render_views

    let(:expected_response) do
      { name: leader_type.content['name'] }.to_json
    end

    before do
      allow(RollItemService).to(
        receive(:random_item).with(:leader_types).and_return(leader_type)
      )
    end

    it 'returns leader_type' do
      get :random_leader_type, as: :json
      expect(response.body).to eq(expected_response)
    end
  end
end
