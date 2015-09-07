#!/usr/bin/env rake

begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks.'
end

# === Bundler ===

Bundler::GemHelper.install_tasks

# === Cucumber ===

require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:test, 'Run features that should pass') do |task|
  task.cucumber_opts = '--color --tags ~@wip --strict --format pretty'
end

# === RuboCop ===

require 'rubocop/rake_task'

RuboCop::RakeTask.new(:rubocop) do |task|
  # Don't abort Rake on failure.
  task.fail_on_error = false
end

# === Configuration ===

# Run Cucumber tests and RuboCop as default task.
task default: [:test, :rubocop]