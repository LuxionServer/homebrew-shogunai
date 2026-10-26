cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.9.3"
  sha256 arm:   "bc488531fc3f4e39f9f719c016dfa2b5fa73394599af148cb2180fd8eb9f4eda",
         intel: "46f9371107918502411969bd615306445fd9a95ea4ba93669ee546a341d2c0a5"

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
