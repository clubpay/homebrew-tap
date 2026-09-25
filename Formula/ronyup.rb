class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.6.1"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.1/ronyup_0.6.1_darwin_amd64.tar.gz"
      sha256 "7271a3db597415ecfa399ae6d9795f9a40d4f901397ad2b21a67439a912eb785"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.1/ronyup_0.6.1_darwin_arm64.tar.gz"
      sha256 "57c2a1d5d503b94f2ab0017b16d436d1ee35ee0befe7f6e5d9136fa875d1b059"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.1/ronyup_0.6.1_linux_amd64.tar.gz"
      sha256 "73244c7fa1cda6411ecadc8b96470823920e8174ba47cf49d7f28c4423c56fd8"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.1/ronyup_0.6.1_linux_arm64.tar.gz"
      sha256 "1b7cee52374cabd5b39b9f63a4a318410d7c87b0d67cc8858d9d2a9b4858fedd"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
