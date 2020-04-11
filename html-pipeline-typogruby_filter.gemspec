# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'html/pipeline/typogruby_filter/version'

Gem::Specification.new do |spec|
  spec.name          = 'html-pipeline-typogruby_filter'
  spec.version       = HTML_Pipeline::TypogrubyFilter::VERSION
  spec.authors       = ['Brian Mikol']
  spec.email         = ['github@sffogworks.com']

  spec.summary       = 'An HTML::Pipeline filter for Typogruby text filters.'
  spec.description   = 'Puts fancy typography styles in your HTML.'
  spec.homepage      = 'https://github.com/bmikol/html-pipeline-typogruby_filter'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency             'html-pipeline',      '~> 2.3'
  spec.add_dependency             'typogruby',          '~> 1.0'

  spec.add_development_dependency 'bundler',            '~> 2.1'
  spec.add_development_dependency 'guard',              '~> 2.16'
  spec.add_development_dependency 'guard-minitest',     '~> 2.4'
  spec.add_development_dependency 'minitest',           '~> 5.14'
  spec.add_development_dependency 'minitest-reporters', '~> 1.4'
  spec.add_development_dependency 'rake',               '~> 13.0'
end
