class GitCryobank < Formula
  desc "Archive Git repositories over SSH and browse them on the web"
  homepage "https://github.com/mxcl/git-cryobank"
  url "https://github.com/mxcl/git-cryobank/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "981ec22d17f5f9ab49d63450303e5b9d3b3028f8532ba0c9ab78cd3021020730"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "git cryobank HOST", shell_output("#{bin}/git-cryobank --help")
  end
end
