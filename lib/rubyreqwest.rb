require "helix_runtime"

begin
  require "rubyreqwest/native"
rescue LoadError
  warn "Unable to load rubyreqwest/native. Please run `rake build`"
end
