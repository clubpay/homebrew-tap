class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.6.6"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.6/ronyup_0.6.6_darwin_amd64.tar.gz"
      sha256 "f638d3d44e814ecb995eb163cf0d915530f5a20dd166e45b2c8a215869d7d939"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.6/ronyup_0.6.6_darwin_arm64.tar.gz"
      sha256 "dad00883656f668059172ef11a1d9cbb4adc88f9967862c8eb9125d74e698694"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.6/ronyup_0.6.6_linux_amd64.tar.gz"
      sha256 "a5650b5665f5120150f1469263de432af929f9718374e83439ecc9cbab181533"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.6/ronyup_0.6.6_linux_arm64.tar.gz"
      sha256 "67a266273b0c0d3041d9f46c1dc748aa0efe9ffcae7636d359c04ff28797748f"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
