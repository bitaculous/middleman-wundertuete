#!/usr/bin/env rake

require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:test, 'Run features that should pass') do |task|
  task.cucumber_opts = '--color --tags ~@wip --strict --format pretty'
end