cask "package-manager-manager" do
  version "0.27.0"
  sha256 "3fc2c1e8d8814438025a6c8323ae894153a189c80740a74fcc4ba4a0dcf1ae59"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
