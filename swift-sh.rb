class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/1.1.0.zip"
  sha256 "4567a01e828bd8df3949be45439edbb35a251fdc3a42c8b19fdfb935ec4743d6"

  bottle :unneeded
   
  def install
    system "swift", "build", 
      "--configuration", "release",
      "-Xswiftc", "-static-stdlib",
      "--disable-sandbox"
    bin.install '.build/release/swift-sh'
  end
end
