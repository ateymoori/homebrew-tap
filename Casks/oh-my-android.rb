cask "oh-my-android" do
  version "0.4.3"
  sha256 "0e935bfbc3a962657836b972ba45fdda0a1349415e9a7d935e974c77bdc202c5"

  url "https://github.com/ateymoori/oh-my-android/releases/download/v#{version}/OhMyAndroid-#{version}.zip"
  name "Oh My Android"
  desc "Control panel and MCP server for the Android emulator and devices"
  homepage "https://github.com/ateymoori/oh-my-android"

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
