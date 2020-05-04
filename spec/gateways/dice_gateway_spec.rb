# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DiceGateway do
  context 'with invalid input' do
    it 'raises error with invalid sides' do
      expect { DiceGateway.roll(count: 1, sides: -1) }.to raise_error(ArgumentError)
    end

    it 'raises error with invalid count' do
      expect { DiceGateway.roll(count: 0, sides: 6) }.to raise_error(ArgumentError)
    end
  end

  context 'with valid input' do
    let(:response) do
      {
        'total': 4,
        'values': [4],
        'constant': 0
      }.to_json
    end

    it 'calls http service' do
      expect(HTTParty).to receive(:get).and_return(response)
      DiceGateway.roll(count: 1, sides: 6)
    end

    it 'returns total value' do
      allow(HTTParty).to receive(:get).and_return(response)
      total = DiceGateway.roll(count: 1, sides: 6)

      expect(total).to eq(4)
    end
  end
end
