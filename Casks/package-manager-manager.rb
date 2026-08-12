cask "package-manager-manager" do
  version "0.21.0"
  sha256 "a3f47bb431cc5e5ddc7a53fc743bf6102756b1faeb5764db2db9cc029dff58d7"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
