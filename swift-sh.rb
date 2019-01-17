class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/1.4.0.tar.gz"
  sha256 "a4cf6ba2ec9fe751352d0508a0f66a483286fb41fee6357df770e250a04494b1"

  bottle :disabled
   
  def install
    system "swift", "build", 
      "--configuration", "release",
      "-Xswiftc", "-static-stdlib",
      "--disable-sandbox"
    bin.install '.build/release/swift-sh'
  end
end
