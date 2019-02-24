class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/1.8.0.tar.gz"
  sha256 "5e0ef3448dbb03f75c383e48eca7871c0ae3adfb741bfed8c5de169f46b3f12b"

  bottle :disabled
   
  def install
    args = ["swift", "build", 
      "--configuration", "release",
      "--disable-sandbox"]
    args += ["-Xswiftc", "-static-stdlib"] if OS.mac?

    system *args

    bin.install '.build/release/swift-sh'
    bin.install '.build/release/swift-sh-edit' if OS.mac?
  end
end
