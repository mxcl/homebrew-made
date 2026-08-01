cask "package-manager-manager" do
  version "0.18.0"
  sha256 "8f23ff855980d92ec378caa48abc7bf4cf2769f83f8ddea82de8879dd2dfa5e3"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
