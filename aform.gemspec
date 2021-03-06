# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aform/version'

Gem::Specification.new do |spec|
  spec.name          = "aform"
  spec.version       = Aform::VERSION
  spec.authors       = ["Anton Versal"]
  spec.email         = ["ant.ver@gmail.com"]
  spec.summary       = %q{Filling AR models from complex JSON}
  spec.description   = %q{Form Object implementation for filling models from JSON with nested arrays}
  spec.homepage      = "https://github.com/antonversal/aform"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency             "activesupport"
  spec.add_dependency             "activemodel"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "minitest-emoji"
  spec.add_development_dependency "mocha"
  spec.add_development_dependency "activerecord"
  spec.add_development_dependency "sqlite3"
end
