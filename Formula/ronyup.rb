class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.4.9"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.9/ronyup_0.4.9_darwin_amd64.tar.gz"
      sha256 "e4c92f95e32d92869f639e20a8dfcbda1b997234ec35fcc342f3f33e60880662"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.9/ronyup_0.4.9_darwin_arm64.tar.gz"
      sha256 "78d5d0bf7a7b20e9fbac7d6af6ef58a46350dfa1c180bc943111ade65b8ca2a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.9/ronyup_0.4.9_linux_amd64.tar.gz"
      sha256 "32afe909570694cd0c50127b12a9631c7123d812587d1036597982422625479b"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.9/ronyup_0.4.9_linux_arm64.tar.gz"
      sha256 "cd57290aba6d439238778d1e01a0c99987daabfe2bd478d15197464613d9afa4"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
