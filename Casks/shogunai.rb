cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "bd8ee0f7c135b50156700d35271c138b07cb7bb7248af868d0346ac769af0fc8",
         intel: "fd656caad00ec9139097ab7e31630c0a4e5eb129ecb03b7fff91ced34260351d"

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
