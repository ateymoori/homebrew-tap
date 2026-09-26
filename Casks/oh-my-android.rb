cask "oh-my-android" do
  version "0.4.4"
  sha256 "bd4b8a175d9956c503057b652b17e517802126fb6d5b352a69f6be80e152f45a"

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
