cask "effectcraft" do
  version "0.4.0"
  sha256 "276fa037741900809ad4c9ed82e70a02e810e4e92a5b20976fb2dac6d694e71a"

  url "https://github.com/storytold/effectcraft/releases/download/v#{version}/effectcraft-#{version}-macos-universal.dmg"
  name "EffectCraft"
  desc "Motion graphics and visual effects compositor"
  homepage "https://getartcraft.com/apps/effectcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "EffectCraft.app"

  zap trash: [
    "~/Library/Application Support/EffectCraft",
    "~/Library/Caches/EffectCraft",
    "~/Library/Preferences/ai.storyteller.effectcraft.plist",
  ]
end
