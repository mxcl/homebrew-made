cask "package-manager-manager" do
  version "0.14.0"
  sha256 "9fe76c12f15467d9f37c019b434f186bb37621514c6c75ba5eef9800fef0a7f8"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
