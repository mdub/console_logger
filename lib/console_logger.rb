require "logger"

# Provides a Logger customised for console output.
#
module ConsoleLogger

  # Returns a new Logger, customised for console output.
  #
  # dest - the IO stream to write to
  # verbose - sets log-level to DEBUG, if true
  #
  def self.new(dest = $stderr, verbose = false)
    ::Logger.new(dest).tap do |logger|
      logger.formatter = Formatter.new
      logger.level = verbose ? ::Logger::DEBUG : ::Logger::INFO
    end
  end

  class Formatter < ::Logger::Formatter

    def call(severity, time, progname, msg)
      "#{severity}: #{msg.strip}\n"
    end

  end

end
