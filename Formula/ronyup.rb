class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.4.15"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.15/ronyup_0.4.15_darwin_amd64.tar.gz"
      sha256 "8d3e2441d01f0931904f791a2ce0cb4f6f3cfdd9e8930bd4ec2ed5489f2c5ff1"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.15/ronyup_0.4.15_darwin_arm64.tar.gz"
      sha256 "20ce6d36ab1dbecc8a1ce3c55ccfb62ea0f11fe5704865be1f3989770466a64d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.15/ronyup_0.4.15_linux_amd64.tar.gz"
      sha256 "e3c3f7373b456673ae8c53a92dd8ac6c8aefdd927e2482ffdfaede63971aaa7b"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.15/ronyup_0.4.15_linux_arm64.tar.gz"
      sha256 "4b80812989d04ab7255dea077864b24cfaf1e9c0efc211c978547e63fa34c7d6"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
