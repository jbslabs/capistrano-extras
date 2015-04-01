# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/extras/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-extras'
  spec.version       = Capistrano::Extras::VERSION
  spec.authors       = ['Balazs Kovacs']
  spec.email         = ['balazs.kovacs@supercharge.io.com']
  spec.summary       = 'Capistrano tasks for interactive console and log tailing.'
  spec.description   = ''
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '>= 3.1'
  spec.add_dependency 'sshkit', '>= 1.2.0'

  spec.add_development_dependency 'rake'
end
