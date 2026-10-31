cask "taut" do
  arch intel: "-x64"

  version "3.4.1"
  sha256 arm:   "682ba5573477a6e9136556ddff1fe85bd2e579fb24f8fac068bb46b708fd4f67",
         intel: "0654a161b903c7d72f93924912a96056217f04563f19276e0bb5ab857f3cbd26"

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
