class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.5.28"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.28/ronyup_0.5.28_darwin_amd64.tar.gz"
      sha256 "fc0df6d928f45e44440f11b83bf5bba9edd68e965d654ca605e407ae66efd0c0"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.28/ronyup_0.5.28_darwin_arm64.tar.gz"
      sha256 "34c7f9f9ad27133a1e687e56fba69fcc9da8fd00a5264dc3a67f3a5dbef4c3e9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.28/ronyup_0.5.28_linux_amd64.tar.gz"
      sha256 "5e57c2dccc320e82bc97d1827aed76fb8fe3d80161d2aefdddeafd56fb645c78"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.28/ronyup_0.5.28_linux_arm64.tar.gz"
      sha256 "3db854afbbd12f5b0be77d26c0cc99a5921e673519339cdb0578d07227ff6ab8"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
