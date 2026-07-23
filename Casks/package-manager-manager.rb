cask "package-manager-manager" do
  version "0.15.0"
  sha256 "8ba04ada2651f06ccdc97ec83dbecf774c182c70fd9a12eb25a1d54102be9223"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
