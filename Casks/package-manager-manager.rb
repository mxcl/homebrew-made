cask "package-manager-manager" do
  version "0.28.0"
  sha256 "cb7ef01e483dec5d0208edc3e55b31474957db323caf4fd5f970d25ebf173d40"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
