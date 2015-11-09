#!/usr/bin/env rake

# Load all Rake tasks in `lib/tasks`.
Dir.glob('lib/tasks/*.rake').each { |task| load task }

# === Configuration ===

# Run all specs, Cucumber tests and RuboCop as default task.
task default: [:spec, :test, :rubocop]