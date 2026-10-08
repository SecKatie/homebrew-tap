cask "vectorcraft" do
  version "0.6.0"
  sha256 "aad684340a369512a35a71b98645bf9bad8c6f8768fd57bb5097153aa6bc1d87"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-#{version}-macos-universal.dmg"
  name "VectorCraft"
  desc "Vector graphics editor"
  homepage "https://getartcraft.com/apps/vectorcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "VectorCraft.app"

  zap trash: [
    "~/Library/Application Support/VectorCraft",
    "~/Library/Preferences/ai.storyteller.vectorcraft.plist",
  ]
end
