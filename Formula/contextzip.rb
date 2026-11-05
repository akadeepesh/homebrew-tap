class Contextzip < Formula
  desc "Package exactly the right parts of your codebase for any AI tool"
  homepage "https://www.contextzipcli.com"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.6.0/contextzip-0.6.0-darwin-arm64.tar.gz"
      sha256 "7dd4b5e3b87f8396d99368983b12b42ed63266d925a9c1d322bb168c97ce6124"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.6.0/contextzip-0.6.0-darwin-x64.tar.gz"
      sha256 "704a3d5e66613e3884c9f41c2a41e60a690c0500e2e3f304729566219c2f2d82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.6.0/contextzip-0.6.0-linux-arm64.tar.gz"
      sha256 "f1d5e9254e7ba11755822abee98605385ed7640835b7891494b890cc0e4eb18f"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.6.0/contextzip-0.6.0-linux-x64.tar.gz"
      sha256 "72b4f8cca42242b51ca2c0e1f25dc50ae3176c414686fcdf06d20c0c64609c58"
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
