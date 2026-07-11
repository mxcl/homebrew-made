class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/refs/tags/2.5.0.tar.gz"
  sha256 "07f3c2d1215b82eb56ebfeb676b5e3860c23a828c14fd482c7c1935817f3220f"

  # brew devs suck nowadays
  env :std unless OS.mac?

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"

    bin.install ".build/release/swift-sh"
    bin.install ".build/release/swift-sh-edit" if OS.mac?
  end
end
