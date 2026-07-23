class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.5.11"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.11/ronyup_0.5.11_darwin_amd64.tar.gz"
      sha256 "09504c2b6c04a90ff36e10ada5c1a5cc03e28f077b8c95bfd79eee9f3e7dde17"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.11/ronyup_0.5.11_darwin_arm64.tar.gz"
      sha256 "ee4b7b89b3ea969521d0871a9795d316f0da9b717bb93cb22ecb385798da0290"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.11/ronyup_0.5.11_linux_amd64.tar.gz"
      sha256 "9a8a90fefbd33de08cca8a45c6010bd36b903b6ef4d222755f76e2eeaf40f056"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.11/ronyup_0.5.11_linux_arm64.tar.gz"
      sha256 "75db25f375d9e3c9f96f6e73f30c60b70a49561351b7113640d6c663d828f622"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
