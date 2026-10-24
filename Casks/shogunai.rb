cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "369c276b7dab61c0c415433eeca6a2b32e3dabacc4c88ace10d7c2fc369778e6",
         intel: "8b6f726cae995b8179b4841ffdcbbbce1ea21fbe124f6a241175fc0723b6c766"

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
