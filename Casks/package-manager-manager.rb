cask "package-manager-manager" do
  version "0.20.0"
  sha256 "4b62322cc5beae2213233bc6815e4c9c94aa447cc6dff7f7eb8a4476a7cf3dca"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
