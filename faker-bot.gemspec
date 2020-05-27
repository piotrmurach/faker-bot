
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "faker/bot/version"

Gem::Specification.new do |spec|
  spec.name          = "faker-bot"
  spec.version       = Faker::Bot::VERSION
  spec.authors       = ["Austin Kabiru"]
  spec.email         = ["makabby@gmail.com"]

  spec.summary       = %q{A faker-ruby/faker lookup command line tool.}
  spec.description   = %q{Quickly look up Faker methods without leaving your terminal!}
  spec.homepage      = "https://github.com/faker-ruby/faker-bot"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = ['faker']
  spec.require_paths = ['lib']

  spec.add_dependency "faker"
  spec.add_dependency "pastel", "~> 0.7.2"
  spec.add_dependency "thor", ">= 0.20", "< 1.1"
  spec.add_dependency "tty-pager"
  spec.add_dependency "tty-screen"
  spec.add_dependency "tty-tree"

  spec.add_development_dependency "bundler", ">= 1.16"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.83.0"
  # Workaround for cc-test-reporter with SimpleCov 0.18.
  # Stop upgrading SimpleCov until the following issue will be resolved.
  # https://github.com/codeclimate/test-reporter/issues/418
  spec.add_development_dependency "simplecov", "~> 0.10", "< 0.18"
end
