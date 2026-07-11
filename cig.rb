class Cig < Formula
  desc "Check Git repositories for uncommitted or unpushed changes"
  homepage "https://github.com/mxcl/cig"
  url "https://github.com/mxcl/cig/archive/d690d0d25db41b7ea7c43ed10a151d91288a2f40.tar.gz"
  version "0.1.5-mxcl.1"
  sha256 "50c903b0c41be65a7cee1e4f9a8c55597cac513456902a336b5e6366262ea475"

  depends_on "go" => :build

  def install
    gopath = buildpath.parent/"gopath"
    (gopath/"src/github.com/stevenjack").mkpath
    (gopath/"src/github.com/stevenjack/cig").make_symlink(buildpath)
    ENV["GO111MODULE"] = "off"
    ENV["GOPATH"] = "#{gopath}:#{buildpath}/Godeps/_workspace"
    system "go", "build", "-o", bin/"cig", "github.com/stevenjack/cig"
  end

  test do
    assert_match "cig version 0.1.5", shell_output("#{bin}/cig --version")
  end
end
