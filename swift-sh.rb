class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/1.3.1.tar.gz"
  sha256 "3dc4b65c763ad664956009857709158773bce847528965554f95cc93d6f77806"

  bottle :disabled
   
  def install
    system "swift", "build", 
      "--configuration", "release",
      "-Xswiftc", "-static-stdlib",
      "--disable-sandbox"
    bin.install '.build/release/swift-sh'
  end
end
