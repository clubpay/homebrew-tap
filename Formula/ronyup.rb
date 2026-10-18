class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.6.4"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.4/ronyup_0.6.4_darwin_amd64.tar.gz"
      sha256 "aa753ab7139e5ba6be0c39686f1471f3e5c849410216a003928ed035f9bbaa49"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.4/ronyup_0.6.4_darwin_arm64.tar.gz"
      sha256 "28c0a5d1d70a2a8be204a803cf1fd103e683644421549a06f1f58719155148ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.4/ronyup_0.6.4_linux_amd64.tar.gz"
      sha256 "4ef2786e0d7e43d64999d071995d7c018100ea6bab7a15721935b71a99914b9e"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.4/ronyup_0.6.4_linux_arm64.tar.gz"
      sha256 "66109841e1552fede03494f8af514e0fbb834a7ae34cc7089a0b0669922ef1e4"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
