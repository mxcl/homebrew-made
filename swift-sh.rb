class SwiftSh < Formula
  desc "Scripting with easy zero-conf dependency imports"
  homepage "https://github.com/mxcl/swift-sh"
  url "https://github.com/mxcl/swift-sh/archive/1.0.0.zip"
  sha256 "57b32c7092e48dc46dcc0027551a00944545f2ab8e27d1550e2f4c58a278a82b"

  bottle do
     root_url "https://github.com/mxcl/swift-sh/releases/download/1.0.0"
     cellar :any_skip_relocation
     sha256 "5fefe46b892693f45dceee8c5aea42f055468c60e914df9d1d05174a7b6bb3c3" => :mojave
   end
   
  def install
    system "swift", "build", 
      "--configuration", "release",
      "-Xswiftc", "-static-stdlib",
      "--disable-sandbox"
    bin.install '.build/release/swift-sh'
  end
end
