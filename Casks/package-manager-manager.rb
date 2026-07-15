cask "package-manager-manager" do
  version "0.13.0"
  sha256 "627821a00824480bf72c588041a602d0be719a9b1e4a657ce8f2b083bced64ca"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
