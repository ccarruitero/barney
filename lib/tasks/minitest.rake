require 'rake/testtask'
require 'rails/test_unit/sub_test_task'

desc 'Run all the test suite'
task :test do
  Rake::Task['test:all'].invoke
end

namespace :test do
  Rails::SubTestTask.new(all: 'test:prepare') do |t|
    t.libs << 'test'
    t.pattern = 'test/**/*_test.rb'
    t.verbose = true
  end

  Rails::SubTestTask.new(models: 'test:prepare') do |t|
    t.libs << 'test'
    t.pattern = 'test/models/**/*_test.rb'
    t.verbose = true
  end

  Rails::SubTestTask.new(:controllers) do |t|
    t.libs << 'test'
    t.pattern = 'test/controllers/**/*_test.rb'
    t.verbose = true
  end

  Rails::SubTestTask.new(helpers: 'test:prepare') do |t|
    t.libs << 'test'
    t.pattern = 'test/helpers/**/*_test.rb'
    t.verbose = true
  end

  Rails::SubTestTask.new(mailers: 'test:prepare') do |t|
    t.libs << 'test'
    t.pattern = 'test/mailers/**/*_test.rb'
    t.verbose = true
  end

  Rails::SubTestTask.new(integration: 'test:prepare') do |t|
    t.libs << 'test'
    t.pattern = 'test/integration/**/*_test.rb'
    t.verbose = true
  end
end

task default: :test
