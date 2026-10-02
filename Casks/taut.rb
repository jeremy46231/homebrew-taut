cask "taut" do
  arch intel: "-x64"

  version "3.1.1"
  sha256 arm:   "b23874b8c23986962a8d5fa556a178276c9efc2a3f58f16cde45a2f9e41acfb2",
         intel: "f4f8ae36123638632706fb244dcc6dab5e0241812891e6833d65c881e448b3bc"

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
