cask "vectorcraft" do
  version "0.5.0"
  sha256 "871c6099353574719478819b63ec7319c4f3f71cd61b0053d4c8e2da0820d0e2"

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
