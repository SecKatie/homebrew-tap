cask "filmcraft" do
  version "0.2.1"
  sha256 "4deff5924e8e4040e60c73db2e668812a5967c973790be7565f8e8d9c69344fd"

  url "https://github.com/storytold/filmcraft/releases/download/v#{version}/filmcraft-#{version}-macos-universal.dmg"
  name "FilmCraft"
  desc "Non-linear video editor"
  homepage "https://getartcraft.com/apps/filmcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "FilmCraft.app"

  zap trash: [
    "~/Library/Application Support/FilmCraft",
    "~/Library/Preferences/ai.storyteller.filmcraft.plist",
  ]
end
