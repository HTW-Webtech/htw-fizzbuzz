# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fizzbuzz/version'

Gem::Specification.new do |spec|
  spec.name          = "htw-fizzbuzz"
  spec.version       = Fizzbuzz::VERSION
  spec.authors       = ["Gregory Igelmund"]
  spec.email         = ["gregory.igelmund@gmail.com"]

  spec.summary       = %q{Simple showcase of a gem containing a fizzbuzz implementation}
  spec.description   = %q{Example fizzbuzz implementation}
  spec.homepage      = "http://www.github.com/grekko/htw-fizzbuzz"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
