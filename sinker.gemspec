# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinker/version'

Gem::Specification.new do |spec|
  spec.name          = "sinker"
  spec.version       = Sinker::VERSION
  spec.authors       = ["Mark Turner"]
  spec.email         = ["mturner@webassign.net"]
  spec.summary       = %q{A utility to synchronize Google Apps accounts to OpenLDAP.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
