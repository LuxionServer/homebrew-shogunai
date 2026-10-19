cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "4484d44d2f5e035e53c9557a6c228e5968565724850dec7e84167ddab57a1a25",
         intel: "5519974ff0b30afba8b286ec6572e01ebb6ed9fa787e2c04564bfeac8b3576c4"

  url "https://github.com/LuxionServer/ShogunAi/releases/download/v#{version}/ShogunAi-#{version}-#{arch}.dmg"
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
