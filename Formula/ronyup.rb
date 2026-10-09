class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.6.2"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.2/ronyup_0.6.2_darwin_amd64.tar.gz"
      sha256 "440df01d9a980bf47f5094d18460a987a96d35834315a167f314225855441099"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.2/ronyup_0.6.2_darwin_arm64.tar.gz"
      sha256 "904deb37ecee96ac51a294d3ca828d025201d25db5592cddfae86cdae57aa562"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.2/ronyup_0.6.2_linux_amd64.tar.gz"
      sha256 "b5e017e3f3ca0a95ec8f943f9c2f4fdbf7debf508c4fdf2ad86a91967aba36b9"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.2/ronyup_0.6.2_linux_arm64.tar.gz"
      sha256 "7280addcc473218be551ee1cb36d45b0454a8de0ef606a3a3c71aa43781708d7"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
