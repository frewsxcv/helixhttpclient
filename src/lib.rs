#[macro_use]
extern crate helix;
extern crate hyper;

use std::io::Read;

ruby! {
    class Rubyreqwest {
        def get(url: String) -> Response {
            let client = hyper::client::Client::new();
            let response = client.get(&url).send().expect("Could not send request");
            let mut response_body = String::new();
            let status_code: u64 = response.status_raw().0.into();
            ::std::io::BufReader::new(response)
                .read_to_string(&mut response_body)
                .expect("could not read response into string");
            Response::new(status_code, response_body)
        }
    }

    class Response {
        struct {
            code: u64,
            body: String,
        }

        def initialize(helix, code: u64, body: String) {
            Response {
                helix,
                code,
                body,
            }
        }

        def body(&self) -> String {
            self.body.clone()
        }
    }
}
