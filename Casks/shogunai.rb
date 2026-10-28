cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.9.4"
  sha256 arm:   "4858f565e12966006ab594d979aef083e58414cf3a9ba95c416ae31c42820526",
         intel: "5549181fe8cab21ea8b96131bc6ff22db5c70a1efb66fb6658c87001c393c3c9"

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
