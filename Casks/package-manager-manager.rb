cask "package-manager-manager" do
  version "0.19.0"
  sha256 "f719718c8a9bace0af106b01ed18d067622cc0da6e55daea904c928df9ac34cb"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
