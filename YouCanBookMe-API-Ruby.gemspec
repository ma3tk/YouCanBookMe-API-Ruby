# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'YouCanBookMe/version'

Gem::Specification.new do |spec|
  spec.name          = 'youcanbookme-api-ruby'
  spec.version       = YouCanBookMe::VERSION
  spec.authors       = ['ma3tk']
  spec.email         = ['masataka0227@gmail.com']

  spec.summary       = 'YouCanBook.Me API Wrapper'
  spec.description   = 'YouCanBook.Me API Wrapper'
  spec.homepage      = 'https://github.com/ma3tk/YouCanBookMe-API-Ruby'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  spec.metadata['source_code_uri'] = 'https://github.com/ma3tk/YouCanBookMe-API-Ruby'
  spec.metadata['changelog_uri'] = 'https://github.com/ma3tk/YouCanBookMe-API-Ruby'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'http', '~> 4.0'
  spec.add_development_dependency 'bundler', '~> 2.1.4'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.62.0'
end
