cask "taut" do
  arch intel: "-x64"

  version "3.0.1"
  sha256 arm:   "2273e76ed59db77823486fc9825824328d3121ba6351da6527ffcf7a1cdb2fc4",
         intel: "e01cb40ee739e209d50a7ad373225fe2694eeb22bc6f84dead5ede23ff5a077c"

  url "https://github.com/jeremy46231/taut/releases/download/desktop-v#{version}/taut-mac#{arch}.dmg"
  name "Taut"
  desc "Client mod for Slack"
  homepage "https://taut.jer.app/"

  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :monterey

  app "Taut.app"

  zap trash: [
    "~/Library/Application Support/Taut",
    "~/Library/Preferences/app.jer.taut.plist",
    "~/Library/Saved Application State/app.jer.taut.savedState",
  ]
end
