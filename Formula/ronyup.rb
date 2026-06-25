class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.4.10"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.10/ronyup_0.4.10_darwin_amd64.tar.gz"
      sha256 "075713e2e5c05312b11602cec13a79a1777d3f6638e1e196ab8d1026771a1e75"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.10/ronyup_0.4.10_darwin_arm64.tar.gz"
      sha256 "faac755b0899f41723eb25441c60e1bfd385a3fce7cba3fa41043a3524926672"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.10/ronyup_0.4.10_linux_amd64.tar.gz"
      sha256 "7cf735bc2184dac2b220d11eb884b5ff5316f39b1616d916a6e28881dea7ee1d"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.10/ronyup_0.4.10_linux_arm64.tar.gz"
      sha256 "7b7fb0eb899532ac076c94459465c3f3f0c903b69b22d49b7099ff2b20e0a25d"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
