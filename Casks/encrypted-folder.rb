cask "encrypted-folder" do
  version "1.1.0"
  sha256 "c9f43390f87f84ab88919a3c285233a1876b544aa08aa860c789297f0a8ff625"

  url "https://github.com/mxcl/encrypted-folder/releases/download/v#{version}/Encrypted-Folder-#{version}.dmg"
  name "Encrypted Folder"
  desc "Finder for an encrypted folder"
  homepage "https://github.com/mxcl/encrypted-folder"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Encrypted Folder.app"
end
