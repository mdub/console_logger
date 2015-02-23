require 'console_logger'
require 'stringio'

describe ConsoleLogger do

  let(:output) { "" }
  let(:output_stream) { StringIO.new(output) }

  let(:logger) { described_class.new(output_stream) }

  describe "#info" do
    it "outputs a message" do
      logger.info("message")
      expect(output).to eq "message\n"
    end
  end

  %w(debug warn error fatal).each do |level|

    describe "##{level}" do

      before do
        logger.level = Logger::DEBUG
      end

      it "prepends #{level.upcase} to the message" do
        logger.send(level, "message")
        expect(output).to eq "#{level.upcase}: message\n"
      end

    end

  end

  describe "#level" do
    it "defaults to INFO" do
      expect(logger.level).to eq Logger::INFO
    end
  end

  context "verbose" do

    let(:logger) { described_class.new(output_stream, true) }

    describe "#level" do
      it "defaults to DEBUG" do
        expect(logger.level).to eq Logger::DEBUG
      end
    end

  end

end
