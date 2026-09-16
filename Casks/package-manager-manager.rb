cask "package-manager-manager" do
  version "0.25.0"
  sha256 "c1d11aa43cd91cc7cf00e89eb6c37ec48d90e1152097676dfc0f17ae93176cb0"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
