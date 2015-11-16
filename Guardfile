#!/usr/bin/env guard

group :spec do
  guard :rspec, cmd: 'rspec', failed_mode: :focus, all_after_pass: true, all_on_start: true, notification: true do
    # Specifications
    watch(%r{^spec/.+_spec\.rb$})

    # Library
    watch(%r{^lib/(.+)\.rb$})           { |m| "spec/lib/#{m[1]}_spec.rb" }

    # Shared examples
    watch(%r{^spec/shared/(.+)\.rb$})   { 'spec' }

    # Supporting Ruby files with custom matchers, macros, etc.
    watch(%r{^spec/support/(.+)\.rb$})  { 'spec' }

    # Spec helpers
    watch('spec/wundertuete_helper.rb') { 'spec' }
    watch('spec/spec_helper.rb')        { 'spec' }
  end

  guard :cucumber, all_after_pass: true, all_on_start: true, notification: true do
    watch(%r{^features/.+\.feature$})
    watch(%r{^features/support/.+$}) { 'features' }

    watch(%r{^features/step_definitions/(.+)_steps\.rb$}) do |m|
      Dir[File.join("**/#{m[1]}.feature")][0] || 'features'
    end
  end
end