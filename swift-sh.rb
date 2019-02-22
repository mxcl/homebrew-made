class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/1.7.2.tar.gz"
  sha256 "98e51b0eb5df7a316aaddde64aa3510fd5916e85d9c7f651f0beb3bb1954ebd3"

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
