class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  version "0.4.12"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.12/ronyup_0.4.12_darwin_amd64.tar.gz"
      sha256 "a8076fc157f383458df54167e9072ae3b44d4cd419a39d4d6c54534da4b66975"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.12/ronyup_0.4.12_darwin_arm64.tar.gz"
      sha256 "7b339d16fb312f4777b3562b33aadcf69151cbeb571b17e11eb066a8e2efca87"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.12/ronyup_0.4.12_linux_amd64.tar.gz"
      sha256 "5e71293c1f8798e2f02aa0f435d12b9079e6d2362bebdbeeb77b5fcc9b17e43a"
    end
    on_arm do
      url "https://github.com/clubpay/ronykit/releases/download/ronyup%2Fv0.4.12/ronyup_0.4.12_linux_arm64.tar.gz"
      sha256 "359883482d614c6c7a2e48470bf876093a08b8977e2c23d62975ec72bccaccbc"
    end
  end

  def install
    bin.install "ronyup"
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
