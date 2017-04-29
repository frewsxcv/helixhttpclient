require "rubyreqwest"

describe "Rubyreqwest" do
  it "can send a request" do
    expect(
      Rubyreqwest.new("http://meow.com").get!.body
    ).to(
      eq("lol")
    )
  end
end

