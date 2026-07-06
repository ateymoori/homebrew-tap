# RoyanWhisper — Homebrew Cask.
#
# Install:
#   brew tap ateymoori/tap
#   brew install --cask royan-whisper
#
# The DMG is hosted as a GitHub release asset on ateymoori/homebrew-tap. `version` and
# `sha256` are rewritten by scripts/release.sh each release; the DMG must be notarized
# + stapled (the release pipeline does this) or `brew install` is blocked by Gatekeeper.
cask "royan-whisper" do
  version "1.0.0"
  sha256 "ecd7540bcf515634124d12d8589cfc63f01f6b8c8ec07d6d4766f8ffdca03a92"

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
    "~/Library/Logs/RoyanWhisper",
    "~/Library/Preferences/se.royan.whisper.plist",
  ]
end
