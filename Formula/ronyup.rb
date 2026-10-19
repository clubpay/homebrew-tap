class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.6.6"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.6/ronyup_0.6.6_darwin_amd64.tar.gz"
      sha256 "a7089685ad988c07ba1157e370da756b5bcf75e11dcdb7e6c7ab918dd4abaa6b"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.6/ronyup_0.6.6_darwin_arm64.tar.gz"
      sha256 "0e48584b553557fbb4c9c5c03d3ceee67c9afe8668895a33498278df236b8c64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.6/ronyup_0.6.6_linux_amd64.tar.gz"
      sha256 "bba06615df2a793f5e887cf6299d78da2c9c0c824fc790a35920c77d0c224c91"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.6/ronyup_0.6.6_linux_arm64.tar.gz"
      sha256 "747cad23f54909f85c9891f90c240401c62f19ac0acc89e91e020991b2732694"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
