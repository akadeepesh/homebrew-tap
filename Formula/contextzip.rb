class Contextzip < Formula
  desc "Package exactly the right parts of your codebase for any AI tool"
  homepage "https://www.contextzipcli.com"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.4/contextzip-0.5.4-darwin-arm64.tar.gz"
      sha256 "21dc5c7a318a18858637ac31e2a2e1ff1248b19353d7879cb455dcc265f437cd"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.4/contextzip-0.5.4-darwin-x64.tar.gz"
      sha256 "0c1054651838cc20bc2b2561ed5f3f3e3d0d9e28149d314250babfac06e1659a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.4/contextzip-0.5.4-linux-arm64.tar.gz"
      sha256 "572ed6fc4bbb5b1f515e237118fe967874b6e05ff3607eff7a28a9271d779f43"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.4/contextzip-0.5.4-linux-x64.tar.gz"
      sha256 "be86ae0d1ea90e5378da51be362b51a822223a41948aa911a9372ed81a82e4f2"
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
