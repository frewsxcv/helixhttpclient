require 'helix_runtime/build_task'

HelixRuntime::BuildTask.new("helixhttpclient")

task :default => :build
