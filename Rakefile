ENV['USE_REPORTERS'] ||= "1"

require "bundler/gem_tasks"
require 'rake/testtask'
require 'yard'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb"]
  t.verbose = true
end

YARD::Rake::YardocTask.new do |t|
  t.files = ['lib/**/*.rb']
end

task default: 'test'
