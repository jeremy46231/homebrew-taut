cask "taut" do
  arch intel: "-x64"

  version "3.2.0"
  sha256 arm:   "076d2591c584467b6666a580cf13be21ef7ccc89d4c1bdd3534f8c6b9bd76fd8",
         intel: "32df69b8c1d0c1988f010a7cb85efe03f08b72687ec3e5b41d812a8fb6feea9b"

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
