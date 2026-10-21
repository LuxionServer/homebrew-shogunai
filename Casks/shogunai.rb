cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.8.5"
  sha256 arm:   "45022d4753fd7691038feb40c416564c63cfc51b70f7cc707cba4832d1475aea",
         intel: "6e58b9b72ac56c484b8dc9c78894ff4f3a371c839c598fbd1a070160137cc5eb"

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
