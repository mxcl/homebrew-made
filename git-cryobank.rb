class GitCryobank < Formula
  desc "Archive Git repositories over SSH and browse them on the web"
  homepage "https://github.com/mxcl/git-cryobank"
  url "https://github.com/mxcl/git-cryobank/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "69a12b1078c8a50ad04dcedd0cf11822cd9e65b57ba727a43ea2627d225a1e5d"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "git cryobank HOST", shell_output("#{bin}/git-cryobank --help")
  end
end
