# frozen_string_literal: true

require_relative 'lib/jekyll/podcast/version'

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-podcast'
  spec.version       = Jekyll::Podcast::VERSION
  spec.authors       = ['Nathan Bottomley']
  spec.email         = ['nathan.bottomley@gmail.com']

  spec.summary       = 'A Jekyll plugin that provides some useful features for podcasting websites.'
  spec.homepage      = 'https://github.com/furius95/jekyll-podcast'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  # spec.metadata['allowed_push_host'] = 'http://mygemserver.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  # spec.metadata['changelog_uri'] = 'TODO: Put your gem's CHANGELOG.md URL here.'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  # spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'jekyll', '~> 4.2'
  spec.add_runtime_dependency 'json-schema', '~> 2.6'
  spec.add_runtime_dependency 'mp3info', '~> 0.8.5'

  spec.add_development_dependency 'nokogiri', '~> 1.13'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
