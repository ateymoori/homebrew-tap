# Royan AB — Homebrew Tap

Homebrew tap for apps by [Royan AB](https://royan.se).

## RoyanWhisper

A native macOS menu-bar push-to-talk dictation app — hold 🌐 Fn, speak, and the text
is transcribed (via OpenRouter) and pasted into the frontmost app.

```sh
brew tap ateymoori/tap
brew install --cask royan-whisper
```

Or in one line:

```sh
brew install --cask ateymoori/tap/royan-whisper
```

> On newer Homebrew, if it says the tap is untrusted, run `brew trust ateymoori/tap` once.

The app is Developer ID–signed and notarized by Apple, so it installs and launches with
no Gatekeeper warning. Requires macOS 26 (Tahoe) or later.

To update or remove:

```sh
brew upgrade --cask royan-whisper
brew uninstall --cask royan-whisper
```

## Oh My Android

A floating control panel for Google's Android emulator and devices: dark mode, font scale, language,
TalkBack, network conditions, GPS, screenshots, layout and data inspectors, one click each.
Open source: [ateymoori/oh-my-android](https://github.com/ateymoori/oh-my-android).

```sh
brew install --cask ateymoori/tap/oh-my-android
```

Developer ID–signed and notarized. Requires macOS 26 (Tahoe) or later and an Android SDK.
