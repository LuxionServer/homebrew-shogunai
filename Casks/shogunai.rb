cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.8.3"
  sha256 arm:   "99e84c690cfde3d6ecfd2673c60eb360c719d7ad7f738a2292c04f9956bb64e8",
         intel: "3c80582c1044327a0d0d2128390787cf73cb935a8d32b7e9536449e4f8e9d46a"

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
