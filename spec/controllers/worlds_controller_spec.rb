# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WorldsController, type: :controller do
  let(:government_name) { 'name_1' }
  let!(:government) do
    FactoryBot.create(
      :roll_item,
      item_type: :forms_of_government,
      content: { name: government_name, description: 'test description' },
      range_min: 1,
      range_max: 1
    )
  end
  let(:expected_response) do
    {
      name: government.content['name'],
      description: government.content['description']
    }.to_json
  end

  describe '#random_government' do
    render_views

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

    let(:params) { { name: government_name_2 } }
    let(:government_name_2) { 'name_2' }
    let!(:government_2) do
      FactoryBot.create(
        :roll_item,
        item_type: :forms_of_government,
        content: { name: government_name_2, description: 'test description' },
        range_min: 2,
        range_max: 2
      )
    end
    let(:expected_response) do
      {
        name: government_2.content['name'],
        description: government_2.content['description']
      }.to_json
    end

    it 'returns government' do
      get :government, params: params, as: :json
      expect(response.body).to eq(expected_response)
    end
  end
end
