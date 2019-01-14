class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/1.2.0.tar.gz"
  sha256 "c8b4ab24bbacd46fc3ecc70b8ad7e023d4b46f516040e2782c2aceb83c0cc068"

  bottle :disabled
   
  def install
    system "swift", "build", 
      "--configuration", "release",
      "-Xswiftc", "-static-stdlib",
      "--disable-sandbox"
    bin.install '.build/release/swift-sh'
  end
end
