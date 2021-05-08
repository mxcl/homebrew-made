class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/2.2.0.tar.gz"
  sha256 ""

  bottle do
    root_url "https://github.com/mxcl/swift-sh/releases/download/2.2.0"
    sha256 cellar: :any_skip_relocation
    sha256 mojave: "8bee3e8bcc0c3d9b05499c0b2e6622ef2200ed2f3c72707123261d47fd4d34d7"
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
