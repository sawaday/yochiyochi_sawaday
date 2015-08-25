# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yochiyochi_sawaday/version'

Gem::Specification.new do |spec|
  spec.name          = "yochiyochi_sawaday"
  spec.version       = YochiyochiSawaday::VERSION
  spec.authors       = ["sawaday"]
  spec.email         = ["sawada.yusuke0108@gmail.com"]

  spec.summary       = %q{
   : sawaday's first test gem.}
  spec.description   = %q{ : sawaday's first test gem.}
  spec.homepage      = "http://sawada.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
