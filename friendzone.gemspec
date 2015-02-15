# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'friendzone/version'

Gem::Specification.new do |spec|
  spec.name          = "friendzone"
  spec.version       = Friendzone::VERSION
  spec.authors       = ["francescoferraioli"]
  spec.email         = ["francesco.ferraioli@outlook.com"]
  spec.description   = %q{This gem makes it easy to create a framework that allows for friendships between users of an app}
  spec.summary       = %q{This gem makes it easy to create a framework that allows for friendships between users of an app}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
