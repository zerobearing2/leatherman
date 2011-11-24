# -*- encoding: utf-8 -*-
require File.expand_path('../lib/leatherman/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["zerobearing2"]
  gem.email         = ["david@zerobearing.com"]
  gem.description   = %q{The Leatherman GEM is a collection of various class extensions for Rails 3.x / Ruby 1.9.x projects.}
  gem.summary       = %q{Common class extensions used as tools or additions for ease of use. A developers handy tool.}
  gem.homepage      = "https://github.com/zerobearing2/leatherman"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "leatherman"
  gem.require_paths = ["lib"]
  gem.version       = Leatherman::VERSION

  gem.add_dependency('activesupport', '>= 3.0')
  gem.add_dependency('i18n')

  gem.add_development_dependency('guard')
  gem.add_development_dependency('growl')
  gem.add_development_dependency('guard-rspec')
  gem.add_development_dependency('rspec')
  gem.add_development_dependency('liquid', ">= 2.2.2")
  gem.add_development_dependency('mongoid', ">= 2.3.3")
  gem.add_development_dependency('bson', ">= 1.3.1")
  gem.add_development_dependency('bson_ext', ">= 1.3.1")
end
