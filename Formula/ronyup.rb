class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.4.15"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.15/ronyup_0.4.15_darwin_amd64.tar.gz"
      sha256 "8a8bc8c89e1074335d5de5e1aeee3416abe955576cab8b3f04e7a0df6fedb258"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.15/ronyup_0.4.15_darwin_arm64.tar.gz"
      sha256 "e603bd64fb5f8726d2a673b35cd6cf7911ff5d9f15fbe4abeb2867b0e1a09fb6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.15/ronyup_0.4.15_linux_amd64.tar.gz"
      sha256 "1bbe4707ffeface2eff60b34dd972dfb0f5ffe26c635dbd7b1088b1baa0df481"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.15/ronyup_0.4.15_linux_arm64.tar.gz"
      sha256 "eb0b78de066e4e3b6c707020bf539a5ccee0ca3ee287c471d38b9b42f74ace82"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
