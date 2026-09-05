cask "package-manager-manager" do
  version "0.24.0"
  sha256 "51af5595d5fe359c48dfe76ebb6095eebd8989bf82fb546c62dba56f5b5dd9aa"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
