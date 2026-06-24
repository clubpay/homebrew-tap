class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  url "https://github.com/clubpay/ronykit/archive/refs/tags/ronyup/v0.4.7.tar.gz"
  sha256 "790be5f9e6e600f3d9eeff0f39063e8c343ebfa6205fe5520cc0e35902933667"
  license "BSD-3-Clause"
  head "https://github.com/clubpay/ronykit.git", branch: "main"

  depends_on "go" => :build
  depends_on "git"

  def install
    cd "ronyup" do
      ldflags = "-s -w -X github.com/clubpay/ronykit/ronyup/internal.Version=#{version}"
      system "go", "build", *std_go_args(ldflags: ldflags)
    end
  end

  test do
    assert_match "ronyup", shell_output("#{bin}/ronyup --help")
  end
end
