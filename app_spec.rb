# frozen_string_literal: true

require './app'

RSpec.describe App do
  let(:app) { App.new }

  describe '#tokenize' do
    it 'splits strings into array of tokens' do
      expect(app.tokenize('1 + 2')).to eq(['1', '+', '2'])
    end
  end

  describe '#parse' do
    it 'TBA' do
      expect(app.parse).to eq('TBA')
    end
  end
end
