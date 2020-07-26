class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/2.0.1.tar.gz"
  sha256 "e31ae29f524c0d8423f34434fda967e36f5f91de1e54e2f4a256f23b94f5a9d9"

  bottle do
    root_url "https://github.com/mxcl/swift-sh/releases/download/2.0.1"
    cellar :any_skip_relocation
    sha256 "2b78938810780ed6f28888f7f779dbb70523dc7863ae4f141ab6c08f4d86e9c8" => :mojave
  end

  def install
    args = ["swift", "build",
      "--configuration", "release",
      "--disable-sandbox"]
    args += ["-Xswiftc", "-static-stdlib"] unless swift_abi_safe or OS.linux?

    system *args

    bin.install '.build/release/swift-sh'
    bin.install '.build/release/swift-sh-edit' if OS.mac?
  end

  def swift_abi_safe
    # Swift 5 is ABI safe since Xcode 10.2-beta3
    return false unless OS.mac?
    return true if MacOS.version >= 11
    return false unless MacOS.full_version >= '10.14.4'
    # this check is redundant really, but we’re just being careful
    return false unless File.file? "/usr/lib/swift/libswiftFoundation.dylib"
    `swift --version` =~ /Swift version (\d+)\.\d+/
    $1.to_i >= 5
  end

  pour_bottle? do
    reason "The bottle requires a Swift ABI stable version of macOS"
    satisfy do
      MacOS.full_version >= '10.14.4'
    end
  end
end
