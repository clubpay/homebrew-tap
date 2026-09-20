class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.5.28"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.28/ronyup_0.5.28_darwin_amd64.tar.gz"
      sha256 "5c59477c3b46784a1ab212ae6eac30463406d31df0ad9d996bf2a6c7f1b597bb"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.28/ronyup_0.5.28_darwin_arm64.tar.gz"
      sha256 "041c5976cfc4bd3b33a15637c58cc6f9ce3db9d23dd22f66c9eb02e5d8af2202"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.28/ronyup_0.5.28_linux_amd64.tar.gz"
      sha256 "612b2fc7075f3e45536b3cabd7882a76b34c3920b7a7bcb14950403b7f3b19cc"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.28/ronyup_0.5.28_linux_arm64.tar.gz"
      sha256 "62e4644d3e948e92b781adcdb093f0e684eba0b27c1f254cb9c40c592bdaa3b7"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
