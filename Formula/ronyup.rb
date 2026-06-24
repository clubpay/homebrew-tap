class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.4.9"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.9/ronyup_0.4.9_darwin_amd64.tar.gz"
      sha256 "6e7cd225da53294ddc6f6c5d37f92289b6272786e0a44252c16140e4b0878530"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.9/ronyup_0.4.9_darwin_arm64.tar.gz"
      sha256 "c87aacccb4a2c3f9930bb2a11bc5c0c76952a7ae0e6d213217ed69e9df6a604c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.9/ronyup_0.4.9_linux_amd64.tar.gz"
      sha256 "8480135834e6813b72a765fb9c059ff0eaa4869e4508ceffdf92d8c8348f8462"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.9/ronyup_0.4.9_linux_arm64.tar.gz"
      sha256 "a1f0674c602621f42977665a6f04f58652843aa8bf54af14813b50fc8d2001c0"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
