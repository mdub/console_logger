# coding: utf-8

Gem::Specification.new do |spec|

  spec.name          = "console_logger"
  spec.version       = "1.0.0"

  spec.summary       = %q{A Logger customised for console output.}
  spec.license       = "MIT"

  spec.authors       = ["Mike Williams"]
  spec.email         = ["mdub@dogbiscuit.org"]
  spec.homepage      = "https://github.com/mdub/console_logger"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^test/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

end
