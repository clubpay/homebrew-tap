class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.6.5"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.5/ronyup_0.6.5_darwin_amd64.tar.gz"
      sha256 "8fba45d8efbcd5133e2a0468b1a5132d1dc2d78ec0ddb2bee4e351dfe01efe0d"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.5/ronyup_0.6.5_darwin_arm64.tar.gz"
      sha256 "4aa0d31a5d819c0d051b927e6528441b45a06c832f0b97957d6c823cca81cf29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.5/ronyup_0.6.5_linux_amd64.tar.gz"
      sha256 "ce6b67337f0c96581f7587cb7809b0d43a892bc86e6ed945b294597654f47a55"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.6.5/ronyup_0.6.5_linux_arm64.tar.gz"
      sha256 "1bcc0037b594743e64fd21bbaeb05434ac96a24f427a4162512a4f371052bc38"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
