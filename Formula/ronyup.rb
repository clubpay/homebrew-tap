class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.4.8"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.8/ronyup_0.4.8_darwin_amd64.tar.gz"
      sha256 "f2e83f182d4a34fc8433dd442ed32386826330fbd54a02653083d4a9d5aacec4"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.8/ronyup_0.4.8_darwin_arm64.tar.gz"
      sha256 "0fdca0dddf51a96a5a3c47a69e66793500555a30844a40c40cb49bae3586d4b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.8/ronyup_0.4.8_linux_amd64.tar.gz"
      sha256 "416a3e9045136b8caae46648aa7b36c96505d50facbb4eb1a04fb3459edf64fe"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.8/ronyup_0.4.8_linux_arm64.tar.gz"
      sha256 "e4d47c7165cebe4ad46644e2b2744bc88fbcddde52c6001fe88e15837b765e9e"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
