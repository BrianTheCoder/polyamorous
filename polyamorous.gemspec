# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'polyamorous/version'

Gem::Specification.new do |gem|
  gem.name          = "polyamorous"
  gem.version       = Polyamorous::VERSION
  gem.authors       = ["brianthecoder"]
  gem.email         = ["brianthecoder@gmail.com"]
  gem.description   = %q{Super awesome flexible associations}
  gem.summary       = %q{Associations that allow you define how data is created and serialized, allowing for cross orm and data store associations painlessly!}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ["lib"]
  
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "hashie"
  gem.add_development_dependency "ffaker"
  gem.add_development_dependency "mongoid"
  gem.add_development_dependency "redis"
  gem.add_development_dependency "activerecord"
  
  gem.add_dependency 'activesupport', '~> 3.0'
end
