require "helixhttpclient"

describe "HelixHttpClient" do
  it "can send a request" do
    expect(
      HelixHttpClient.new("http://meow.com").get!.body
    ).to(
      eq("lol")
    )
  end
end

