class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.6.8"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.8/ronyup_0.6.8_darwin_amd64.tar.gz"
      sha256 "a7e4c1d1bf53856d4cefb753e66260ae7f3d1ac7314b4de60a7fba2d718ecbfa"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.8/ronyup_0.6.8_darwin_arm64.tar.gz"
      sha256 "97800bb5fdd9f376a5d20f752f0fe1df2f51c95481e90bcf10d5f70dd9b34b2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.8/ronyup_0.6.8_linux_amd64.tar.gz"
      sha256 "f64af0f47d26683ecf1b6a922cbfff986c26c1793339fa63386c4eb380166bf2"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.8/ronyup_0.6.8_linux_arm64.tar.gz"
      sha256 "18cf37a08a5275632e871f61cb6ff3d6d627eb8567ee3bd18d9e91d2a8bb18ba"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
