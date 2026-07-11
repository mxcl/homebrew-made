class GitCryobank < Formula
  desc "Archive Git repositories over SSH and browse them on the web"
  homepage "https://github.com/mxcl/git-cryobank"
  url "https://github.com/mxcl/git-cryobank/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "a3f9dac16a189de2547d32352da7ab3a536697ecec640d7a6b250ee49ceed9b6"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "git cryobank HOST", shell_output("#{bin}/git-cryobank --help")
  end
end
