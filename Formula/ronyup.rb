class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.4.8"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.8/ronyup_0.4.8_darwin_amd64.tar.gz"
      sha256 "10fda3c8c117b3c50a3b9e90b35930967662cb4a2fff6e2fe524ff8f2b669a8f"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.8/ronyup_0.4.8_darwin_arm64.tar.gz"
      sha256 "535cbfc5c1ec02940aaa3515f796e495b3047b83c54d02d538f0c8b30a1045e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.8/ronyup_0.4.8_linux_amd64.tar.gz"
      sha256 "5d8dbe378eecf068c37e344a2ae44ac27310a7b92aa54e3635a525ed9cebfef4"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.8/ronyup_0.4.8_linux_arm64.tar.gz"
      sha256 "3370d86925387cef4eb69ba3c61d76df3f36e84cda9b501893370803585aa3bd"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
