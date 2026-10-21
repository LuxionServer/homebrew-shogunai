cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.8.7"
  sha256 arm:   "c13b41f3614505566399d53c7c8bc0d3ec4de2e9b2c7be6bfda8bb49f5443051",
         intel: "9fdaa50a49ae654ed9af2c70fd95c9b2db7398df662b4ad8821189e9ab6ca1d7"

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
