class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.4.9"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.9/ronyup_0.4.9_darwin_amd64.tar.gz"
      sha256 "481e44edc633c0128b45aca3c892b1efd05cd876f710b60dfc5f99a8dd6b064f"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.9/ronyup_0.4.9_darwin_arm64.tar.gz"
      sha256 "d49c3e14584afe050cda135d46012fb73b6e24d872c5fe25808b16ce2dc0e0f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.9/ronyup_0.4.9_linux_amd64.tar.gz"
      sha256 "071fb17831504b2012611ea5b637cd1a59804f521f8a3b754e6076f1cca71a49"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.9/ronyup_0.4.9_linux_arm64.tar.gz"
      sha256 "60b781ec843b5c2fee529ef307e506aa0d2346f2f2346e7532c477cd4131dc6e"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
