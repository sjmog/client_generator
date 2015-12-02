require 'client_generator/interface'

describe ClientGenerator::Interface do
  subject(:interface) { described_class.new }

  it 'uses Thor to initialize' do
    expect(described_class).to respond_to :start
  end

  describe '#generate' do
    after do
      FileUtils.rm_rf(Dir.glob("#{$TEST_DIR}/*"))
    end

    it 'outputs a message to the console' do
      expect(STDOUT).to receive(:puts).with('Generating...')
      interface.generate("Test")
    end

    it 'outputs a file with the provided name' do
      interface.generate("TestClient")
      expect(File).to exist("./#{$TEST_DIR}/test_client.rb")
    end
  end
end