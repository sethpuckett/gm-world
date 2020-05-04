# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RollItemService do
  let(:item_type) { :forms_of_government }
  let(:roll) { 2 }
  let!(:low_roll_item) do
    FactoryBot.create(:roll_item, item_type: item_type, range_min: 1, range_max: 1)
  end
  let!(:correct_roll_item) do
    FactoryBot.create(:roll_item, item_type: item_type, range_min: 2, range_max: 2)
  end
  let!(:high_roll_item) do
    FactoryBot.create(:roll_item, item_type: item_type, range_min: 3, range_max: 3)
  end

  before do
    FactoryBot.create(:dice_type, item_type: item_type)
    allow(DiceGateway).to receive(:roll).and_return(roll)
  end

  describe '.random_item' do
    it 'returns correct item' do
      item = RollItemService.random_item(item_type)
      expect(item).to eq(correct_roll_item)
    end

    context 'when no item exists' do
      let(:roll) { 4 }

      it 'returns nil' do
        item = RollItemService.random_item(item_type)
        expect(item).to be_nil
      end
    end
  end
end
