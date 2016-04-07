# frozen_string_literal: true
$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'simple_hash/version'

Gem::Specification.new do |gem|
  gem.name        = 'simple_hash'
  gem.version     = SimpleHash::VERSION
  gem.date        = Date.today.to_s
  gem.summary     = 'Ruby short cut for making hash'
  gem.description = 'Ruby short cut for making hash'
  gem.homepage    = 'https://github.com/karloku/simple_hash'
  gem.authors     = ['Karloku Sang']
  gem.email       = ['karloku@gmail.com']
  gem.license     = 'MIT'
  gem.required_ruby_version = '>= 2.1.0' # bc optional keyword args

  gem.require_paths = ['lib']
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec}/*`.split("\n")

  gem.add_development_dependency 'coveralls'
  gem.add_development_dependency 'codeclimate-test-reporter', '~>0.4'
  gem.add_development_dependency 'pry', '~> 0.10'
  gem.add_development_dependency 'rspec', '~> 3.4'
  gem.add_development_dependency 'rake', '~> 11.1'
end
