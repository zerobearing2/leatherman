# -*- encoding: utf-8 -*-
require File.expand_path('../lib/leatherman/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["zerobearing2"]
  gem.email         = ["david@zerobearing.com"]
  gem.description   = %q{Leathermans tool for ruby. Mostly class extensions for common tasks related to rails 3.x}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "leatherman"
  gem.require_paths = ["lib"]
  gem.version       = Leatherman::VERSION

  gem.add_dependency('activesupport', '>= 3.0')
  gem.add_dependency('i18n')
  gem.add_dependency('guard')
  gem.add_dependency('growl')
  gem.add_dependency('guard-rspec')
  gem.add_development_dependency('rspec', '>= 2.7')
end
