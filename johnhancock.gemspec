# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'johnhancock/version'

Gem::Specification.new do |spec|
  spec.name          = "johnhancock"
  spec.version       = Johnhancock::VERSION
  spec.authors       = ["Brandon Lawrence"]
  spec.email         = ["brandon.lawrence@customink.com"]

  spec.summary       = %q{The best Signature Pad gem you will ever find!}
  spec.description   = %q{This Gem gives you access to a signature pad form helper so you can save touchpad signatures as encoded png data}
  spec.homepage      = "https://github.com/Brantron/johnhancock"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
