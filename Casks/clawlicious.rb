cask "clawlicious" do
  version "1.0.0"
  sha256 "f55647207790bfc4894f16b5a7bb79e2781e09755e2a7f35da6fcaca3a498830"

  url "https://github.com/mxcl/clawlicious/releases/download/v#{version}/clawlicious-#{version}.dmg"
  name "Clawlicious"
  desc "Read and file bookmarks with Codex"
  homepage "https://github.com/mxcl/clawlicious"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Clawlicious.app"
end
