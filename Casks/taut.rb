cask "taut" do
  arch intel: "-x64"

  version "3.1.0"
  sha256 arm:   "d155d392be5b560a8416137da4b022e1e24700cd13e1115738e9b5f5d29ca49f",
         intel: "47a3209ee80ff0158ce6bcf6063575bde5b8a9209a278a5a0335bcc3e05b8ac3"

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
