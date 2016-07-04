# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'john_hancock/version'

Gem::Specification.new do |spec|
  spec.name          = "john_hancock"
  spec.version       = JohnHancock::VERSION
  spec.authors       = ["Brandon Lawrence", "Ben Miller"]
  spec.email         = ["bvbrandonbv@gmail.com", "bjmllr@gmail.com"]

  spec.summary       = %q{The best Signature Pad gem you will ever find!}
  spec.description   = %q{This Gem gives you access to a signature pad form helper so you can save touchpad signatures as encoded png data}
  spec.homepage      = "https://github.com/Brantron/john_hancock"
  spec.license       = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rails'
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
