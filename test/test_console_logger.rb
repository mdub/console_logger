require_relative "test_helper"

require "console_logger"
require "stringio"

describe ConsoleLogger do

  let(:output) { "" }
  let(:output_stream) { StringIO.new(output) }

  let(:logger) { ConsoleLogger.new(output_stream) }

  %w(debug info warn error fatal).each do |level|

    describe "##{level}" do

      before do
        logger.level = Logger::DEBUG
      end

      it "prepends #{level.upcase} to the message" do
        logger.send(level, "message")
        output.must_equal "#{level.upcase}: message\n"
      end

    end

  end

  describe "#level" do
    it "defaults to INFO" do
      logger.level.must_equal Logger::INFO
    end
  end

  describe "verbose" do

    let(:logger) { ConsoleLogger.new(output_stream, true) }

    describe "#level" do
      it "defaults to DEBUG" do
        logger.level.must_equal Logger::DEBUG
      end
    end

  end

end
