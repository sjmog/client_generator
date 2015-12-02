# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'client_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "client_generator"
  spec.version       = ClientGenerator::VERSION
  spec.authors       = ["Sam Morgan"]
  spec.email         = ["s_morgan@me.com"]

  spec.summary       = %q{Generate simple clients for REST APIs.}
  spec.description   = %q{Wraps around Ruby's HTTP modules to provide consistent API client interfaces from the command-line.}
  spec.homepage      = "http://sjmog.github.io"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["client_generator"]
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor'
  spec.add_dependency 'httparty'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
