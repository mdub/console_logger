# ConsoleLogger

Logging is great.  But sometimes, you just want to write to STDOUT/STDERR.

ConsoleLogger provides a quick way to get a Logger optimised for console output.

## Usage

Use it like this:

    require 'console_logger'

    logger = ConsoleLogger.new($stderr)
    logger.info("something is about to happen")
    # => INFO: something is about to happen
    logger.warn("something went wrong!")
    # => WARN: something went wrong!

## Contributing

* It's on GitHub; you know the drill.
