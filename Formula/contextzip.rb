class Contextzip < Formula
  desc "Package exactly the right parts of your codebase for any AI tool"
  homepage "https://www.contextzipcli.com"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.7.0/contextzip-0.7.0-darwin-arm64.tar.gz"
      sha256 "fa33da483cc17c750a3235087885abc49fe90426c56bdec6e390002205c44f9a"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.7.0/contextzip-0.7.0-darwin-x64.tar.gz"
      sha256 "b5869c6d194563b95618e40420587b26b1a1b5308eae007049832c6d6ad04131"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.7.0/contextzip-0.7.0-linux-arm64.tar.gz"
      sha256 "af81c8205818e86303835ab5c4dc908a5c75336819b86349a6080469fd4959a3"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.7.0/contextzip-0.7.0-linux-x64.tar.gz"
      sha256 "4678cbac7d6548e50402b6d7d9d8d7ff44930e714616481d23f0e24b40bbaacc"
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
