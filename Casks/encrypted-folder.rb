cask "encrypted-folder" do
  version "1.0.0"
  sha256 "fa7daa7d165bf6b6eb7307957a6bae954bacf341531d6003e8578d21e3994439"

  url "https://github.com/mxcl/encrypted-folder/releases/download/v#{version}/Encrypted-Folder-#{version}.dmg"
  name "Encrypted Folder"
  desc "Finder for an encrypted folder"
  homepage "https://github.com/mxcl/encrypted-folder"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Encrypted Folder.app"
end
