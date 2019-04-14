class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/1.11.0.tar.gz"
  sha256 "1672abd8d479986a33e1b3a9ac6b86ad092729b393ff721cd4b7dae0030fb5df"

  bottle do
    root_url "https://github.com/mxcl/swift-sh/releases/download/1.11.0"
    cellar :any_skip_relocation
    sha256 "50021a47caf3f24752039fb0d7d815c8a4a62011ec7e59ef70bb9cc99695d38e" => :mojave
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
