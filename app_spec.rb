# frozen_string_literal: true

require './app'

RSpec.describe App do
  let(:app) { App.new }

  describe '#tokenize' do
    it 'splits strings into array of tokens' do
      expect(app.tokenize('1 + 2')).to eq(['1', '+', '2'])
    end
    it 'properly handles multi-digits' do
      expect(app.tokenize('11 +2')).to eq(['11', '+', '2'])
    end
  end

  describe.skip '#parse' do
    let(:ast) { app.parse(tokens, {}) }
    let(:tokens) { ['1', '+', '1', '+', '2'] }
    let(:expected) do
      {
        type: 'PROGRAM',
        body: {
          type: 'BINARY_EXPRESSION',
          left: {
            type: 'LITERAL',
            value: '1'
          },
          operator: '+',
          right: {
            type: 'BINARY_EXPRESSION',
            left: {
              type: 'LITERAL',
              value: '1'
            },
            operator: '+',
            right: {
              type: 'LITERAL',
              value: '2'
            }
          }
        }
      }
    end
    it 'creates ast from tokens' do
      expect(ast).to eq(expected)
    end
  end
end
