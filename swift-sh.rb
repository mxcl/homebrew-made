class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/1.6.1.tar.gz"
  sha256 "7fe28eb43b0d1c068b4b34a8f18d82cb47fd8d3c03c863d2eaff492a101d993e"

  bottle :disabled
   
  def install
    system "swift", "build", 
      "--configuration", "release",
      "-Xswiftc", "-static-stdlib",
      "--disable-sandbox"
    bin.install '.build/release/swift-sh'
  end
end
