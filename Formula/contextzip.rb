class Contextzip < Formula
  desc "Package exactly the right parts of your codebase for any AI tool"
  homepage "https://www.contextzipcli.com"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.9.0/contextzip-0.9.0-darwin-arm64.tar.gz"
      sha256 "a63f1d2bee66f0d9dbcc9210c170b7948b33bd01e72dbf86f5c0654e227526d1"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.9.0/contextzip-0.9.0-darwin-x64.tar.gz"
      sha256 "3ccbbd4d11e656d29a5d547eec387a89510a13a67aa6375fb670c4b74792b5a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.9.0/contextzip-0.9.0-linux-arm64.tar.gz"
      sha256 "4defce3d09cc912b5a459aeec5578bcc718d828eadfbe21bbbccf268c2dad094"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.9.0/contextzip-0.9.0-linux-x64.tar.gz"
      sha256 "bd3272113a077f581280e6b1bc8bc6b570394a3c06bd41438344af27196bd07a"
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
