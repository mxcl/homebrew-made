cask "package-manager-manager" do
  version "0.11.0"
  sha256 "34f83473d9f25ae41ced2e10b96e29f19c5687321e05bd7136423a04e03ce4df"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
