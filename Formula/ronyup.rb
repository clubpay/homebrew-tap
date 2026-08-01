class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.5.15"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.15/ronyup_0.5.15_darwin_amd64.tar.gz"
      sha256 "ffc69e3bb85ba8ddaeb2f8f6a7b42b4f7b37cda8148b40b9675675b8eacdbed2"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.15/ronyup_0.5.15_darwin_arm64.tar.gz"
      sha256 "c9fe33d2813ec0a5980e9ca54b30c3a2de76803a65806d3b2d91325c835d1bf3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.15/ronyup_0.5.15_linux_amd64.tar.gz"
      sha256 "fa164a71758b175230786a558daa6657bcc1dc0912bcd434a9c479e7fb4ee599"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.15/ronyup_0.5.15_linux_arm64.tar.gz"
      sha256 "7bc4fc208b1fc4514f0571fefe11c182fc8422a0919cd48c4334cc178a454016"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
