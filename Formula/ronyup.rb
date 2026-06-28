class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.4.12"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.12/ronyup_0.4.12_darwin_amd64.tar.gz"
      sha256 "7baa08cba7de6309313f82b845d9f5c08e1e1f645761fe2ff3699841e3e7be93"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.12/ronyup_0.4.12_darwin_arm64.tar.gz"
      sha256 "16cf39c197873ba79f041113c2d3361c9b49f5765e0c5073c35333082cb0643a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.12/ronyup_0.4.12_linux_amd64.tar.gz"
      sha256 "402eac4dc8d5d0dc92e33e9420919d23ab7c522531c4f00f2c27661571239de7"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.12/ronyup_0.4.12_linux_arm64.tar.gz"
      sha256 "306b257b2b315fa26e834389cd60a6110e0904231f8d52bf53027b4cdff279bf"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
