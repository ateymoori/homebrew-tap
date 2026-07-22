# RoyanWhisper — Homebrew Cask.
#
# Install:
#   brew tap ateymoori/tap
#   brew install --cask royan-whisper
#
# The DMG is hosted as a GitHub release asset on ateymoori/homebrew-tap. `version` and
# `sha256` are rewritten by scripts/release.sh each release; the DMG must be notarized
# + stapled (the release pipeline does this) or `brew install` is blocked by Gatekeeper.
#
# NOTE: this file is the STAGING copy. Users install from the byte-identical copy in
# github.com/ateymoori/homebrew-tap — after release.sh patches this one, it must be
# copied there and pushed, or installers get a sha256 mismatch and brew hard-fails.
cask "royan-whisper" do
  version "1.0.1"
  sha256 "1bb334e9f42bcb55b25c76042a1c3469a1143248609de48eea67d03db5ef40dc"

  url "https://github.com/ateymoori/homebrew-tap/releases/download/v#{version}/RoyanWhisper-#{version}.dmg"
  name "RoyanWhisper"
  desc "Menu-bar push-to-talk dictation powered by OpenRouter"
  homepage "https://royan.se"

  # No auto_updates yet (Sparkle not shipped) — `brew upgrade --cask` manages updates.
  depends_on macos: :tahoe

  app "RoyanWhisper.app"

  uninstall quit: "se.royan.whisper"

  # `zap` cleans up everything the app leaves behind. The API key is intentionally
  # NOT removed here — it lives in the Keychain; remove it manually if desired.
  zap trash: [
    "~/Library/Caches/se.royan.whisper",
    "~/Library/HTTPStorages/se.royan.whisper",
    "~/Library/Logs/RoyanWhisper",
    "~/Library/Preferences/se.royan.whisper.plist",
  ]
end
