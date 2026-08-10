cask "lyricglow" do
  arch arm: "arm64", intel: "3d72e5b81ae4eefb9eab66f1f40bf3da97d8f7184bb9d7b2ef25ff6ae67ffc45"

  version "0.8.0"
  sha256 arm:   "2412e03c5eab2c6491cff997486288bb0bc2d251bea60ae716cd4949714834dd",
         intel: "3d72e5b81ae4eefb9eab66f1f40bf3da97d8f7184bb9d7b2ef25ff6ae67ffc45"

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
