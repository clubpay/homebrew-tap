class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.5.10"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.10/ronyup_0.5.10_darwin_amd64.tar.gz"
      sha256 "34ef9f15bc654f1f2c8c1add45ab5d698e6eae70c38c72db1a16bfb72ded5b6c"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.10/ronyup_0.5.10_darwin_arm64.tar.gz"
      sha256 "45ddf2837528b07f46406c9af81c78c098e77050ded528a6ad4e0890b0a95b84"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.10/ronyup_0.5.10_linux_amd64.tar.gz"
      sha256 "a59c8f948795d19320c78512b35a32b644928a213c5b99bcfb2453e29d693615"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.10/ronyup_0.5.10_linux_arm64.tar.gz"
      sha256 "e15e9cda42ee2f471531dc2964077c4f8e267f63bf2828c078ce8f56098fcbbc"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
