class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.4.10"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.10/ronyup_0.4.10_darwin_amd64.tar.gz"
      sha256 "6e8e8c189ed1bb6812feb3c4d2c7186dfa85026d0a766003510fafcb5af84377"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.10/ronyup_0.4.10_darwin_arm64.tar.gz"
      sha256 "ac8eb49dd0326441ceb827b75b54f25b0224ac6c68bbf381f921b744d6d9abbe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.10/ronyup_0.4.10_linux_amd64.tar.gz"
      sha256 "7709501ff1cb5ca16119d4adf7232c3bff282bdfab200115379071bfc43155ba"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.10/ronyup_0.4.10_linux_arm64.tar.gz"
      sha256 "2abd6a27a875bcd29a9557383bfde2baddd9dfb18f7debd9e8cfb07574bf7f0e"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
