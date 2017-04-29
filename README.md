# helix-http-client

Proof-of-concept Ruby HTTP client with a Rust backend (powered by [Helix](https://github.com/tildeio/helix)).

```ruby
require 'helixhttpclient'

response = HelixHttpClient.get("http://meow.com")

# Print the response body
puts response.body

# Print the status code
puts response.code
```
