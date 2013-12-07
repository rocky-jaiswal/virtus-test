# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'virtus-test/version'

Gem::Specification.new do |spec|
  spec.name          = "virtus-test"
  spec.version       = Virtus::Test::VERSION
  spec.authors       = ["rocky-jaiswal"]
  spec.email         = ["rocky.jaiswal@gmail.com"]
  spec.description   = %q{Test Virtus}
  spec.summary       = %q{Test Virtus}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "virtus"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
