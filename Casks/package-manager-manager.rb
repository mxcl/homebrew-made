cask "package-manager-manager" do
  version "0.22.0"
  sha256 "2abf1649e7a98fb8b037e137ad0e7d17c3db6be18fbf96f29bb265a64b791f0c"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
