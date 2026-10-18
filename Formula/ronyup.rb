class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.6.5"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.5/ronyup_0.6.5_darwin_amd64.tar.gz"
      sha256 "e95a0337caa07f9a6c12b621999287b49bd13c714da0ee8c49de625bada0372d"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.5/ronyup_0.6.5_darwin_arm64.tar.gz"
      sha256 "6970fef20b701d1645393501e4a3685ee73accf34e7d0eb091879dc47407ddee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.5/ronyup_0.6.5_linux_amd64.tar.gz"
      sha256 "86815a08f7f4125f507f1951f5b27d8f8ea67a8b3ab83e4201baef94806f65c8"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.5/ronyup_0.6.5_linux_arm64.tar.gz"
      sha256 "b4d79cc867421018cd879cb69e339c6c789ca66b4267818193645408a00fcf92"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
