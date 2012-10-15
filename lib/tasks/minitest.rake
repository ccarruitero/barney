require 'rake/testtask'

Rake::TestTask.new :test do |t|
  t.libs << 'test'
  t.test_files = FileList['test/{lib,unit,api,acceptance}/**/*_test.rb']
  t.verbose = true
  t.warning = true
end

Rake::TestTask.new 'test:models' do |t|
  t.libs << 'test'
  t.test_files = FileList['test/models/*_test.rb']
  t.verbose = true
  t.warning = true
end

Rake::TestTask.new 'test:api' do |t|
  t.libs << 'test'
  t.test_files = FileList['test/api/**/*_test.rb']
  t.verbose = true
  t.warning = true
end

Rake::TestTask.new 'test:acceptances' do |t|
  t.libs << 'test'
  t.test_files = FileList['test/acceptance/**/*_test.rb']
  t.verbose = true
  t.warning = true
end

task default: :test
