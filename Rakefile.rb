require 'rubygems'
require 'rdoc/task'
require 'rake/testtask'

RDoc::Task.new do |rd|
  rd.main     = 'CSSMin'
  rd.title    = 'CSSMin'
  rd.rdoc_dir = 'doc'

  rd.rdoc_files.include('lib/**/*.rb')
end

Rake::TestTask.new do |t|
  t.libs.push 'lib'
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end
