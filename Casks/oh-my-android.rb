cask "oh-my-android" do
  version "0.4.6"
  sha256 "4520c67d27b3bbe0f7a69d8e9e48d1449b961cebe557e216e9541c6ec71a0e6e"

  url "https://github.com/ateymoori/oh-my-android/releases/download/v#{version}/OhMyAndroid-#{version}.zip"
  name "Oh My Android"
  desc "Control panel and MCP server for the Android emulator and devices"
  homepage "https://royan.se/work/oh-my-android/"

  depends_on macos: :tahoe

  auto_updates true

  app "Oh My Android.app"
  binary "#{appdir}/Oh My Android.app/Contents/MacOS/ohmyandroid-mcp"

  zap trash: [
    "~/Library/Caches/se.royan.ohmyandroid",
    "~/Library/HTTPStorages/se.royan.ohmyandroid",
    "~/Library/Preferences/se.royan.ohmyandroid.plist",
  ]
end
