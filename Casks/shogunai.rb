cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.8.8"
  sha256 arm:   "fa750d59a38951cbae904a040961d560604b16af348d86101016219c6f58e380",
         intel: "12034dd0b318861784f13368416ce5fb9ee6f8c0f2273bd32cf1c24cb81a895e"

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
