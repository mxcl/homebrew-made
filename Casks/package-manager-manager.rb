cask "package-manager-manager" do
  version "0.16.0"
  sha256 "8ea20e6c157634f0fa4f978ac2533dd3726597a2aacfa58b6ac6b05c3da313ba"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
