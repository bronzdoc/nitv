# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nitv/version'

Gem::Specification.new do |spec|
  spec.name          = "nitv"
  spec.version       = Nitv::VERSION
  spec.authors       = ["bronzdoc"]
  spec.email         = ["lsagastume1990@gmail.com"]

  spec.summary       = %q{Gem to validate NIT}
  spec.description   = %q{Minimal gem to validate NIT(Número de Identificación Tributaria) of Guatemala}
  spec.homepage      = "https://github.com/bronzdoc/nitv"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
end
