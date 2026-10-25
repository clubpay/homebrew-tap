class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.6.8"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.8/ronyup_0.6.8_darwin_amd64.tar.gz"
      sha256 "48a58975c8b94fb83c63a4349b73936a6a9bd9c6a14a773282ba5a4b27bd3f81"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.8/ronyup_0.6.8_darwin_arm64.tar.gz"
      sha256 "d1c44d7fd7bd33474ce15686c410857ecf5304ac923b5fe0fe3f50a50bef5981"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.8/ronyup_0.6.8_linux_amd64.tar.gz"
      sha256 "c9471d3c3a6243a0167bc6b0109649edfe6707a0341b3fd4850a2e722a88e7ae"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.8/ronyup_0.6.8_linux_arm64.tar.gz"
      sha256 "0ede6a9d51f2e90d04ada80878416d8bda027cb84971744c585573a7a226876c"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
