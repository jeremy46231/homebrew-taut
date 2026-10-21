cask "taut" do
  arch intel: "-x64"

  version "3.1.2"
  sha256 arm:   "a33b7eb49d40cf7943351e2cbd8bd969ef70f618c0d2f53897cebf9c90ccbe3a",
         intel: "3d0d423c7509ad15f585a3ceb7f3e528447fdb79819a8ba3aad98e20d71dc0cd"

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
