cask "clawlicious" do
  version "1.2.0"
  sha256 "65d7eeab52680e02e8ce7078dc5cc866e8dbb6ca5a4e288cf131b2a76d0bbcb7"

  url "https://github.com/mxcl/clawlicious/releases/download/v#{version}/clawlicious-#{version}.dmg"
  name "Clawlicious"
  desc "Read and file bookmarks with Codex"
  homepage "https://github.com/mxcl/clawlicious"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Clawlicious.app"
end
