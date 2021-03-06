# frozen_string_literal: true
# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'array_association/version'

Gem::Specification.new do |spec|
  spec.name          = 'array_association'
  spec.version       = ArrayAssociation::VERSION
  spec.authors       = ['Igor Malinovskiy']
  spec.email         = ['igor.malinovskiy@netfixllc.org']

  spec.summary       = 'ActiveRecord-like association for Postgres Array columns'
  spec.description   = 'This gem defines some helpers to use array columns like assiciated models'
  spec.homepage      = 'https://github.com/psyipm/array_association'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'activerecord', '>= 4.0'
  spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.13'

  spec.add_dependency 'activesupport', '>= 4.0'
end
