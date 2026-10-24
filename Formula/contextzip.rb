class Contextzip < Formula
  desc "Package exactly the right parts of your codebase for any AI tool"
  homepage "https://www.contextzipcli.com"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.6/contextzip-0.5.6-darwin-arm64.tar.gz"
      sha256 "f80186c65f026072415361dbd99a17ae92c39bdabd56ee6e2ce530ea7dfed62f"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.6/contextzip-0.5.6-darwin-x64.tar.gz"
      sha256 "fd20cf1271925e11b3f60e2048fe07ec89c0cc37fe57a6ca4bcb22aab6dadbba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.6/contextzip-0.5.6-linux-arm64.tar.gz"
      sha256 "3cf3c6604d056140479ba070bf3a42b8fb53a36b487686bdd91f8f6f019f0e9b"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.6/contextzip-0.5.6-linux-x64.tar.gz"
      sha256 "66676cbab1b9ad018638f712cd872fffa29c79d073ed4c1ef4905e53a56da663"
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
