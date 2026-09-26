cask "oh-my-android" do
  version "0.4.2"
  sha256 "38c349cb20ee668267b9609727dfa94a7f19792aceada490c37eb95f8d1b2385"

  url "https://github.com/ateymoori/oh-my-android/releases/download/v#{version}/OhMyAndroid-#{version}.zip"
  name "Oh My Android"
  desc "Control panel and MCP server for the Android emulator and devices"
  homepage "https://github.com/ateymoori/oh-my-android"

  depends_on macos: :tahoe

  app "Oh My Android.app"
  binary "#{appdir}/Oh My Android.app/Contents/MacOS/ohmyandroid-mcp"

  zap trash: "~/Library/Preferences/se.royan.ohmyandroid.plist"
end
