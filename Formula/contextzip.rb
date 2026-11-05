class Contextzip < Formula
  desc "Package exactly the right parts of your codebase for any AI tool"
  homepage "https://www.contextzipcli.com"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.6.2/contextzip-0.6.2-darwin-arm64.tar.gz"
      sha256 "51f9e6e35285223caccf1cd71dba3b3a2e08a89752cf4e20c94ae5b55c0582e2"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.6.2/contextzip-0.6.2-darwin-x64.tar.gz"
      sha256 "3768f1536721024bbf68c564193c2bb88b1cb624d7df9db3e7b791355f107f3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.6.2/contextzip-0.6.2-linux-arm64.tar.gz"
      sha256 "44fda8c1338016f999d59dd055eb14dd36766d5e560505e45a53b1e746bda1e1"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.6.2/contextzip-0.6.2-linux-x64.tar.gz"
      sha256 "7ee06a78426c46346d1ca3143a304b43d4ab2fc97990de1ebb832902a501445e"
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
