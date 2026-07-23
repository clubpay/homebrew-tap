class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.5.11"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.11/ronyup_0.5.11_darwin_amd64.tar.gz"
      sha256 "bda198f6a7007fb3da9d96277e2f06830bf9195249330459681d84b1134460c0"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.11/ronyup_0.5.11_darwin_arm64.tar.gz"
      sha256 "6b85954e205a144a2904f81d76feb3efcbda8d8cf51a49c8cb8112d2f74cf344"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.11/ronyup_0.5.11_linux_amd64.tar.gz"
      sha256 "f29d64d5443441c82997c50c377518b9a79bb408def68b6d514a8945a2aca14c"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.11/ronyup_0.5.11_linux_arm64.tar.gz"
      sha256 "c048b3e25d1a20640887a47a2288e04f4d0a9f82bac47dad2d969fcac7e12af9"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
