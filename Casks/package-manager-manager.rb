cask "package-manager-manager" do
  version "0.15.1"
  sha256 "e97ae5075f2cc32f8a210676bacaa52080f1e8547f3034a88f37933742fed16f"

  url "https://github.com/mxcl/package-manager-manager/releases/download/v#{version}/package-manager-manager-#{version}.dmg"
  name "Package Manager Manager"
  desc "Inventory and manage packages across package managers"
  homepage "https://github.com/mxcl/package-manager-manager"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Package Manager Manager.app"
end
