class Contextzip < Formula
  desc "Package exactly the right parts of your codebase for any AI tool"
  homepage "https://www.contextzipcli.com"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.5/contextzip-0.5.5-darwin-arm64.tar.gz"
      sha256 "f15ba9381015930bf7b52bd28b5ebb42a79efe176138eeecc87ddc47222d675b"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.5/contextzip-0.5.5-darwin-x64.tar.gz"
      sha256 "db133ae700335d6a179aa6b960420249e252bf36840fbd2f39908898a368fc29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.5/contextzip-0.5.5-linux-arm64.tar.gz"
      sha256 "e1faba1a3d8b558e6acdb21ce6d917a2a598719846f2a13c05f4d68063cb221e"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.5/contextzip-0.5.5-linux-x64.tar.gz"
      sha256 "227fa576060cf07654c2f2d6cc75358e0febafcd0a99cded5d331178316f85ee"
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
