require 'client_generator/generator'

describe ClientGenerator::Generator do
  subject(:generator) { described_class.new }

  describe '#generate' do
    it 'returns true' do
      expect(generator.generate).to eq true
    end
  end
end