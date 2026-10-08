cask "printcraft" do
  version "0.2.1"
  sha256 "5b743dcdf1abbb12432b82f11dabc929bf8aa83866bfd3d110ca05428088dd10"

  url "https://github.com/storytold/pdfcraft/releases/download/v#{version}/printcraft-#{version}-macos-universal.dmg"
  name "PrintCraft"
  desc "PDF viewer and editor"
  homepage "https://getartcraft.com/apps/printcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "PrintCraft.app"

  zap trash: [
    "~/Library/Application Support/PrintCraft",
    "~/Library/Preferences/ai.storyteller.printcraft.plist",
  ]
end
