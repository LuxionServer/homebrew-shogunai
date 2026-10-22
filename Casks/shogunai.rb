cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "b42326fd5442f63331f8fc57861f766f536c504a34793d24f3f9e0ed75db80a4",
         intel: "76869548dc155ba1ad3a913691999e6a2046ad10e22e666875e2a7cccfa8cfef"

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
