cask "oh-my-android" do
  version "0.4.0"
  sha256 "931a1432c8c6b5a36e0bb1065435cf49b1c77b824982ae0b28ace388a069ff58"

  url "https://github.com/ateymoori/oh-my-android/releases/download/v#{version}/OhMyAndroid-#{version}.zip"
  name "Oh My Android"
  desc "Control panel and MCP server for the Android emulator and devices"
  homepage "https://github.com/ateymoori/oh-my-android"

  depends_on macos: :tahoe

  app "Oh My Android.app"
  binary "#{appdir}/Oh My Android.app/Contents/MacOS/ohmyandroid-mcp"

  zap trash: "~/Library/Preferences/se.royan.ohmyandroid.plist"
end
