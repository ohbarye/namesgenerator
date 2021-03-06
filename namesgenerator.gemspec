# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'namesgenerator/version'

Gem::Specification.new do |spec|
  spec.name          = "namesgenerator"
  spec.version       = Namesgenerator::VERSION
  spec.authors       = ["ohbarye"]
  spec.email         = ["over.rye@gmail.com"]

  spec.summary       = "Docker's names generator written in Ruby."
  spec.description   = "Port of Docker 0.7.x names generator written in Ruby."
  spec.homepage      = "https://github.com/ohbarye/namesgenerator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
