class GitCryobank < Formula
  desc "Freeze, thaw, and browse Git repositories on your own SSH host"
  homepage "https://github.com/mxcl/git-cryobank"
  url "https://github.com/mxcl/git-cryobank/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "9c53049c8ed8bb07648a1bbb1984d8689e33e37f352803c20613df5c1860b0ed"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"cryobank", ldflags: "-s -w")
    bin.install_symlink "cryobank" => "git-freeze"
    bin.install_symlink "cryobank" => "git-thaw"
  end

  test do
    assert_match "git freeze [PATH]", shell_output("#{bin}/cryobank --help")
    assert_match "usage: git freeze [PATH]", shell_output("#{bin}/git-freeze --help")
    assert_match "usage: git thaw NAME [PATH]", shell_output("#{bin}/git-thaw --help")
  end
end
