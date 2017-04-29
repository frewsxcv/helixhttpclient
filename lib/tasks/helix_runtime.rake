require 'helix_runtime/build_task'

HelixRuntime::BuildTask.new("rubyreqwest")

task :default => :build
