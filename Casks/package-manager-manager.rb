cask "package-manager-manager" do
  version "0.12.0"
  sha256 "5fc736f9717727f4dce03fadcbf31c3f7293affbdeb64c021bde61ef9f8789d6"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
