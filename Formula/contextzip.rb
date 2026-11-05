class Contextzip < Formula
  desc "Package exactly the right parts of your codebase for any AI tool"
  homepage "https://www.contextzipcli.com"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.6.1/contextzip-0.6.1-darwin-arm64.tar.gz"
      sha256 "c683aae4e7703856e9eac21e575901f9639ba8507c570c802a5e6ef5708b3f9d"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.6.1/contextzip-0.6.1-darwin-x64.tar.gz"
      sha256 "c141984e4de0df9bd6b8b076ae0aefacbd466a027d829b69d3619aa02cb63fbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.6.1/contextzip-0.6.1-linux-arm64.tar.gz"
      sha256 "187d367f266354e7d8f4026a143d980afcc85b4157b4ef3f09157780d583c554"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.6.1/contextzip-0.6.1-linux-x64.tar.gz"
      sha256 "c825f17dcc8c58e200bafa387073ae3bd7f3efdd86ca8af123f288814c8c37ad"
    end
  end

  def install
    libexec.install Dir["*"]
    (bin/"contextzip").write_exec_script libexec/"contextzip"
    (bin/"cz").write_exec_script libexec/"contextzip"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cz --version")
  end
end
