cask "lightcraft" do
  version "0.2.1"
  sha256 "d40c7ea8a3b840227229eaabf573242d173195acba8e25be16259e15cb65dfbb"

  url "https://github.com/storytold/lightcraft/releases/download/v#{version}/lightcraft-#{version}-macos-universal.dmg"
  name "LightCraft"
  desc "Photo library and raw developer"
  homepage "https://getartcraft.com/apps/lightcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "LightCraft.app"

  zap trash: [
    "~/Library/Application Support/LightCraft",
    "~/Library/Preferences/ai.storyteller.lightcraft.plist",
  ]
end
