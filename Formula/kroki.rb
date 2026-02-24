class Kroki < Formula
  desc "A Kroki CLI"
  homepage "https://github.com/yuzutech/kroki-cli"
  url "https://github.com/yuzutech/kroki-cli/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "f7b0fe1dd49eb5fe6d6cbc892e1e84d670d1a90f0c457c7c28e4201654da6c3e"
  license "MIT"

  depends_on "go" => :build

  def install
    # Run the go build command with the values from the Makefile
    system "go", "build", "-o", "kroki", "-ldflags", "-s -w -X main.version=#{version} -X main.commit=version-#{version}", "cmd/kroki"

    bin.install "kroki"
  end

  test do
    # Verify the version output matches what we passed in
    assert_match version.to_s, shell_output("#{bin}/kroki --version")
  end
end
