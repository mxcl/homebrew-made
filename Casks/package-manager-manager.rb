cask "package-manager-manager" do
  version "0.10.0"
  sha256 "cdcfab032614b0ee5bb9735e615db0b41753414d5153e38ddb2dfc449af99a96"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
