cask "taut" do
  arch intel: "-x64"

  version "3.0.0"
  sha256 arm:   "fa7d9871f1633591fef72052426fd3b50c202a5d9b62914fad31ddecd964dcfb",
         intel: "bc2f55cba8da79f800d51e65fc61795b27c81322ce5e8fdcff319cb1310a18e1"

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
