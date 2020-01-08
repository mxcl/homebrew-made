class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/1.14.2.tar.gz"
  sha256 "09a7e6f85a9705b78d729e8d068c69e7f3a3d3ee31b7795286a75dd25845de83"

  bottle do
    root_url "https://github.com/mxcl/swift-sh/releases/download/1.14.2"
    cellar :any_skip_relocation
    sha256 "6a8dacf03767e90fa0dd8a6dded5738ffc10ba710ab0bab1ad559539f6933a6f" => :mojave
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
    return false unless MacOS.full_version >= '10.14.4'
    # this check is redundant really, but we’re just being careful
    return false unless File.file? "/usr/lib/swift/libswiftFoundation.dylib"
    `swift --version` =~ /Swift version (\d+)\.\d+/
    $1.to_i >= 5
  end

  pour_bottle? do
    reason "The bottle requires a Swift ABI stable version of macOS"
    satisfy do
      MacOS.version < '10.14.4'
    end
  end
end
