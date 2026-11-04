class Contextzip < Formula
  desc "Package exactly the right parts of your codebase for any AI tool"
  homepage "https://www.contextzipcli.com"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.7/contextzip-0.5.7-darwin-arm64.tar.gz"
      sha256 "8b2899ad70bba4535cf4573b0e425ad39c3b142c665ff74ec1bac091c1ccd173"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.7/contextzip-0.5.7-darwin-x64.tar.gz"
      sha256 "b2d051d0c9390437823272dee63dd8630c016e88c76a02e39976999266ba5cb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.7/contextzip-0.5.7-linux-arm64.tar.gz"
      sha256 "f222d2b47b4146f0224e35f72e3b80dab4d68cc0afe044eaa770413b66ce8f69"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.7/contextzip-0.5.7-linux-x64.tar.gz"
      sha256 "585347db7f36e58ec34922a5436caeefa1b8c2946ccda8356461a6cbcc384131"
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
