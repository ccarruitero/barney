require 'rake/testtask'

Rake::TestTask.new :test do |t|
  t.libs << 'test'
  t.test_files = FileList['test/{lib,unit,integration,acceptance}/**/*_test.rb']
  t.verbose = true
end

Rake::TestTask.new 'test:units' do |t|
  t.libs << 'test'
  t.test_files = FileList['test/unit/*_test.rb']
  t.verbose = true
end

Rake::TestTask.new 'test:integrations' do |t|
  t.libs << 'test'
  t.test_files = FileList['test/integration/**/*_test.rb']
  t.verbose = true
end

Rake::TestTask.new 'test:acceptances' do |t|
  t.libs << 'test'
  t.test_files = FileList['test/acceptance/**/*_test.rb']
  t.verbose = true
end

task default: :test
