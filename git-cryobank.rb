class GitCryobank < Formula
  desc "Archive Git repositories over SSH and browse them on the web"
  homepage "https://github.com/mxcl/git-cryobank"
  url "https://github.com/mxcl/git-cryobank/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "2b93460c823528f61f8955d46a93721ee738e4fc56779167ed8d143ea5ad2406"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "git cryobank [PATH]", shell_output("#{bin}/git-cryobank --help")
  end
end
