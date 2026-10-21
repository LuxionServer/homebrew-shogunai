cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.8.6"
  sha256 arm:   "01a78a6bd51f3c2c0d3ded5c75f215c51407b53261f7ca16f2d274fb37f64d27",
         intel: "a728f528144ffd7bfa30f4f1d6ea32198466f6a3a27757e74f4c5d530e9aede6"

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
