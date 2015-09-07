#!/usr/bin/env guard

group :test do
  guard :cucumber, all_after_pass: true, all_on_start: true, notification: true do
    watch(%r{^features/.+\.feature$})
    watch(%r{^features/support/.+$}) { 'features' }

    watch(%r{^features/step_definitions/(.+)_steps\.rb$}) do |m|
      Dir[File.join("**/#{m[1]}.feature")][0] || 'features'
    end
  end
end