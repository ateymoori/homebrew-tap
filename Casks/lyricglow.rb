cask "lyricglow" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "37e4164e4cf6089e16b4746fc92d9af6138f9b7ae855b56929d9e4952a806c63",
         intel: "61e51b2aff177a196a16f86244318fb4285ee945fad68ec6f988c0c2a96c521d"

  url "https://github.com/ateymoori/lyricglow/releases/download/v#{version}/LyricGlow-#{arch}.dmg"
  name "LyricGlow"
  desc "Real-time synced lyrics for Spotify and Apple Music in the menu bar"
  homepage "https://github.com/ateymoori/lyricglow"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "LyricGlow.app"

  uninstall quit: "com.lyricglow.app"

  zap trash: [
    "~/Library/Application Support/LyricGlow",
    "~/Library/Application Support/lyricglow",
    "~/Library/Logs/LyricGlow",
  ]
end
