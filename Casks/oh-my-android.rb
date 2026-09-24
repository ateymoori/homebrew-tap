cask "oh-my-android" do
  version "0.4.1"
  sha256 "cb1ec5f615e22309f8208a1c6e1408eea31fc9c355fc9c7fca9340437cfd4c5c"

  url "https://github.com/ateymoori/oh-my-android/releases/download/v#{version}/OhMyAndroid-#{version}.zip"
  name "Oh My Android"
  desc "Control panel and MCP server for the Android emulator and devices"
  homepage "https://github.com/ateymoori/oh-my-android"

  depends_on macos: :tahoe

  app "Oh My Android.app"
  binary "#{appdir}/Oh My Android.app/Contents/MacOS/ohmyandroid-mcp"

  zap trash: "~/Library/Preferences/se.royan.ohmyandroid.plist"
end
