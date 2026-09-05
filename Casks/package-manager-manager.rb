cask "package-manager-manager" do
  version "0.23.0"
  sha256 "3eb54d8b27ef8382f2735ed4c265e3656b445c965754c991e047b52aef9e9ba6"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
