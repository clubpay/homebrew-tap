class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.6.7"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.7/ronyup_0.6.7_darwin_amd64.tar.gz"
      sha256 "cf5112050bf37f9870d70b9523ad10e86570ec647d62c2760e2b6afd20235a1b"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.7/ronyup_0.6.7_darwin_arm64.tar.gz"
      sha256 "816db9096b53ea9becc2513fd2104578732310b1774192052064f47e3472659b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.7/ronyup_0.6.7_linux_amd64.tar.gz"
      sha256 "57c1698a4252419096d4147e50f1fa3316bcfaf0b55eeba09e8e7a75bdeabcf6"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.7/ronyup_0.6.7_linux_arm64.tar.gz"
      sha256 "1e92ddd6367c7aace5b496eadea20eb91bdeffef0f9e00df22658f7f542d604f"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
