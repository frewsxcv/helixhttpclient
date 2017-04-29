require "rubyreqwest"

describe "TextTransform" do
  it "can flip text" do
    expect(
      Rubyreqwest.get("http://meow.com").body
    ).to(
      eq("lol")
    )
  end
end

