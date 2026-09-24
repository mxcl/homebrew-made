cask "package-manager-manager" do
  version "0.26.0"
  sha256 "d06e5f118c181da6a1056411eded84fc03d605a8ee53559e9b912e46e73d03a2"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
