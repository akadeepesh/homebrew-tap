class Contextzip < Formula
  desc "Package exactly the right parts of your codebase for any AI tool"
  homepage "https://www.contextzipcli.com"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.3/contextzip-0.5.3-darwin-arm64.tar.gz"
      sha256 "0164ce0dfd7aa02427d0d83c2e343597c60506663fd34ff509e5858f1062fe48"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.3/contextzip-0.5.3-darwin-x64.tar.gz"
      sha256 "8bed26f7762d8e48008934301f9df8fd36543da304f8a3960788911a8717f119"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.3/contextzip-0.5.3-linux-arm64.tar.gz"
      sha256 "b107cc99bec3d2abfa54b556c5463121ecaf81a95481e804edf4ea369800ca03"
    end
    on_intel do
      url "https://github.com/akadeepesh/contextzip/releases/download/v0.5.3/contextzip-0.5.3-linux-x64.tar.gz"
      sha256 "f64c32dbb6a8fa3d5e82ac0a089f0fce6c1872f549be94257c63d2eaf6110e67"
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
