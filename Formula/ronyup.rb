class Ronyup < Formula
  desc "CLI for scaffolding RonyKIT workspaces, features, and MCP tooling"
  homepage "https://github.com/clubpay/ronykit/tree/main/ronyup"
  url "https://github.com/clubpay/ronykit/archive/refs/tags/ronyup/v0.4.6.tar.gz"
  sha256 "5809489b229e78c1e22c5ac8004011032db861a36ace311f61b0894326ec2607"
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
