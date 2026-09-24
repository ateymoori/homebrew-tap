cask "oh-my-android" do
  version "0.3.0"
  sha256 "76824f0369a5da4c7a3a7f638337fe12fa28dbc51f48fb762e4ebd9116815bc2"

  url "https://github.com/ateymoori/oh-my-android/releases/download/v#{version}/OhMyAndroid-#{version}.zip"
  name "Oh My Android"
  desc "Floating control panel for the Android emulator and devices"
  homepage "https://github.com/ateymoori/oh-my-android"

  depends_on macos: :tahoe

  app "Oh My Android.app"

  zap trash: "~/Library/Preferences/se.royan.ohmyandroid.plist"
end
