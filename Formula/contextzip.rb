class Contextzip < Formula
  desc "Package exactly the right parts of your codebase for any AI tool"
  homepage "https://www.contextzipcli.com"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.8.0/contextzip-0.8.0-darwin-arm64.tar.gz"
      sha256 "d6b22a1eabeb3f439ac0672a10e88c543e68a5a4dcf71c06b64da9247ae81970"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.8.0/contextzip-0.8.0-darwin-x64.tar.gz"
      sha256 "3f8b6861d1e5a04cecaf2d41e961f11f759d4cc2dbc064cb9460b4d9f58b1506"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.8.0/contextzip-0.8.0-linux-arm64.tar.gz"
      sha256 "47238eb7a35a26f8deef69a58afe254be21b2b9b3d3f531ad17f56c7f1c9e6ec"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.8.0/contextzip-0.8.0-linux-x64.tar.gz"
      sha256 "45bbb140c70cbf2d760f85b0747c1bce708b17ea24fa0f6c5001729c5ccd9659"
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
