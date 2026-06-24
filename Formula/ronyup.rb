class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.4.7"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.7/ronyup_0.4.7_darwin_amd64.tar.gz"
      sha256 "c167c02571abb7ba480ccb683ec6b336b8e8242f2b443eeb339ea36e1fc1d097"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.7/ronyup_0.4.7_darwin_arm64.tar.gz"
      sha256 "f6815b85e8cb36369dd88b384bfd0f5b64f899d81350edb07b4161db3c1a0343"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.7/ronyup_0.4.7_linux_amd64.tar.gz"
      sha256 "9126e71f536142172763866eeaa601d495d1974332183f92d795f72b721c3f15"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.7/ronyup_0.4.7_linux_arm64.tar.gz"
      sha256 "0973ed85dfc30dee5618a903dc34dfbbee16b4b81ceb981b72d3a4b04166c8fa"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
