class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/1.8.5.tar.gz"
  sha256 "205f9cf63ecb0b7e14733cb6785d135c240d17d70400a98e3e92179f9b9a6408"

  bottle :disabled
   
  def install
    args = ["swift", "build", 
      "--configuration", "release",
      "--disable-sandbox"]
    args += ["-Xswiftc", "-static-stdlib"] unless swift_abi_safe

    system *args

    bin.install '.build/release/swift-sh'
    bin.install '.build/release/swift-sh-edit' if OS.mac?
  end

  def swift_abi_safe
    # Swift 5 is ABI safe since Xcode 10.2-beta3
    return false unless OS.mac?
    `swift --version` =~ /Swift version (\d+)\.\d+/
    $1.to_i >= 5
  end
end
