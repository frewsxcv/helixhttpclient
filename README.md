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

## License

[CC0 1.0 Universal - Public Domain Dedication](https://creativecommons.org/publicdomain/zero/1.0/)
