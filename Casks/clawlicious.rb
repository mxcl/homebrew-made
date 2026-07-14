cask "clawlicious" do
  version "1.1.0"
  sha256 "8be2db1469f24e50d052e7acaf7aab064b42eb85aa578122c5d53baa8675616d"

  url "https://github.com/mxcl/clawlicious/releases/download/v#{version}/clawlicious-#{version}.dmg"
  name "Clawlicious"
  desc "Read and file bookmarks with Codex"
  homepage "https://github.com/mxcl/clawlicious"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Clawlicious.app"
end
