class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.6.1"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.1/ronyup_0.6.1_darwin_amd64.tar.gz"
      sha256 "26d58fa6788b46ace279b678f95fc26a63430de6ffed42fdaa8d8259556af674"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.1/ronyup_0.6.1_darwin_arm64.tar.gz"
      sha256 "ff912256fae5ed55ed380f9bedecd93c1a6c78bda98a46f6e889f989251f0dd3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.1/ronyup_0.6.1_linux_amd64.tar.gz"
      sha256 "e727a06adf03d2943c8f87baaeee8aaf7880b8a56c8bd495a518bd1fbcf8f110"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.1/ronyup_0.6.1_linux_arm64.tar.gz"
      sha256 "9258543e09b3892a524b027ae3dc550ae942f3e41805abc776d09d7159a7c08b"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
