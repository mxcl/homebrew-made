class GitCryobank < Formula
  desc "Archive Git repositories over SSH and browse them on the web"
  homepage "https://github.com/mxcl/git-cryobank"
  url "https://github.com/mxcl/git-cryobank/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "08a1440056415ae8f16d4035e545f01d3345191a5e66348e9847783bada80bb6"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "git cryobank HOST", shell_output("#{bin}/git-cryobank --help")
  end
end
