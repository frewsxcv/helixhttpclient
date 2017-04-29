require "helix_runtime"

begin
  require "helixhttpclient/native"
rescue LoadError
  warn "Unable to load helixhttpclient/native. Please run `rake build`"
end
