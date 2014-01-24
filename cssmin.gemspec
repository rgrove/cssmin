# coding: utf-8

Gem::Specification.new do |s|
  s.name     = 'cssmin'
  s.version  = '1.0.3'
  s.author   = 'Ryan Grove'
  s.email    = 'ryan@wonko.com'
  s.homepage = 'https://github.com/rgrove/cssmin/'
  s.platform = Gem::Platform::RUBY
  s.summary  = 'Ruby library for minifying CSS.'
  s.description  = 'Ruby library for minifying CSS. Inspired by cssmin.js and YUI Compressor.'
  s.license = 'FreeBSD'

  s.files        = `git ls-files`.split($/)
  s.test_files   = s.files.grep(%r{^(test|spec|features)/})
  s.require_path = 'lib'
  s.has_rdoc     = true

  s.required_ruby_version = '>= 1.8.6'

  s.add_development_dependency "rake"
  s.add_development_dependency "rdoc"
  s.add_development_dependency "minitest"
end
