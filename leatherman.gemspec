# -*- encoding: utf-8 -*-
require File.expand_path('../lib/leatherman/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["zerobearing2", "revans"]
  gem.email         = ["david@zerobearing.com", "robert@codewranglers.org"]
  gem.description   = %q{Ruby & Rails library of tools}
  gem.summary       = %q{Common class extensions used as tools. A developers handy tool.}
  gem.homepage      = "https://github.com/zerobearing2/leatherman"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "leatherman"
  gem.require_paths = ["lib"]
  gem.version       = Leatherman::VERSION

  gem.add_dependency 'activesupport', '~> 4.0.0'

  # environment
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'pry'
  
  # test infrastructure
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'minitest-focus'
  gem.add_development_dependency 'minitest-reporters'
  gem.add_development_dependency 'mocha'
  gem.add_development_dependency 'timecop'
  
  # 3rd party gems
  gem.add_development_dependency 'i18n'
  gem.add_development_dependency 'ruby-units'
  gem.add_development_dependency 'liquid'
  gem.add_development_dependency 'bson_ext'
  gem.add_development_dependency 'sequel'
end
