# encoding: UTF-8
# -*- mode: ruby -*-
# vi: set ft=ruby :
# Based on magic_shell cookbook code, thanks @sethvargo.

# More info at https://github.com/jimweirich/rake/blob/master/doc/rakefile.rdoc

require 'bundler/setup'

namespace :style do
  begin
    require 'rubocop/rake_task'
    desc 'Run Ruby style checks'
    RuboCop::RakeTask.new(:ruby)
  rescue LoadError
    puts '>>>>> Rubocop gem not loaded, omitting tasks' unless ENV['CI']
  end

  begin
    require 'foodcritic'

    desc 'Run Chef style checks'
    FoodCritic::Rake::LintTask.new(:chef) do |t|
      t.options = {
        fail_tags: ['any']
      }
    end
  rescue LoadError
    puts '>>>>> foodcritic gem not loaded, omitting tasks' unless ENV['CI']
  end
end

desc 'Run all style checks'
task style: %w(style:chef style:ruby)

task :unit do
  sh "bundle exec 'rspec ./test/unit/spec/ --color --format documentation'"
end

desc 'Run Test Kitchen integration tests'
task :integration do
  begin
    require 'kitchen/rake_tasks'

    desc 'Run kitchen integration tests'
    Kitchen::RakeTasks.new
  rescue LoadError
    puts '>>>>> Kitchen gem not loaded, omitting tasks' unless ENV['CI']
  end
end

namespace :maintain do
  require 'stove/rake_task'
  Stove::RakeTask.new
end

desc 'Run tests on Travis'
task ci: %w(style)

task test: %w(style unit integration)

task default: %w(test)
