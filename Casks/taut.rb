cask "taut" do
  arch intel: "-x64"

  version "3.3.0"
  sha256 arm:   "36b4c202c638af240b36251510523786d6072b01ec534123a98d2d5bd11d8c07",
         intel: "95285173ac5944483ba82356792c5c35096b2e9c9c4d211f3b7a2ca8620f33e5"

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
