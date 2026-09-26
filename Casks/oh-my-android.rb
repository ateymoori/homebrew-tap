cask "oh-my-android" do
  version "0.4.5"
  sha256 "2aba67dfd24050c9f19db070edeaefb5fb595c7dfe3b4f84c47a31439fc66178"

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
