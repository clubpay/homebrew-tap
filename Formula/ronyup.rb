class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.5.10"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.10/ronyup_0.5.10_darwin_amd64.tar.gz"
      sha256 "e0c2c3c7a81971f6a5b84ad86883c3bc16373457ae123d98ef825d24fbc36e8d"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.10/ronyup_0.5.10_darwin_arm64.tar.gz"
      sha256 "527aec72952996e2ab98f571924a8629e751fdc20d478f2f616de685d48cf256"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.10/ronyup_0.5.10_linux_amd64.tar.gz"
      sha256 "8b7356e21647e82918799723cccd866bb3a79918feba27ee616dfed986375f3f"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.5.10/ronyup_0.5.10_linux_arm64.tar.gz"
      sha256 "85894d495b93f543de32d608601e825b72377d57b23bd7c0951340208258131a"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
