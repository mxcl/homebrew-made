cask "package-manager-manager" do
  version "0.29.1"
  sha256 "4d08c866adaf67117834eeb30f551b422eac3e1e149c05c9da7a716dd332a85d"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
