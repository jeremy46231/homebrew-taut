cask "taut" do
  arch intel: "-x64"

  version "3.4.0"
  sha256 arm:   "7d38820a4848c40bb46555d2fe7497503af660e261623f169da59f7aa80b58bd",
         intel: "1efbad6e244a993b5d3d7c67b90c2c027e0ac4b291bcedd61913ddb1a5ed5f06"

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
