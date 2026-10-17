cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "168879d8d5fb372288e7b1cdc869817a98e91542fde97cab2c9f18fd38acb671",
         intel: "02b0e8a5288c8a35a76738106f72ca0668913b952cc9df7e5ef6d2d28db630bd"

  dmg_version = "1." + version.split(".", 2).last
  url "https://github.com/LuxionServer/ShogunAi/releases/download/v#{version}/ShogunAi-#{dmg_version}-#{arch}.dmg"
  name "ShogunAi"
  desc "Worktree layer for AI agents: provision, inspect and clean Git worktrees"
  homepage "https://github.com/LuxionServer/ShogunAi"

  auto_updates false

  app "ShogunAi.app"
  binary "#{appdir}/ShogunAi.app/Contents/MacOS/ShogunAi", target: "shogun"

  caveats <<~EOS
    ShogunAi is not notarized by Apple. If macOS blocks it on first launch
    ("cannot verify developer"), right-click the app and choose Open, or run:
      xattr -dr com.apple.quarantine "/Applications/ShogunAi.app"
  EOS
end
