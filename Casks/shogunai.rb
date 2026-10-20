cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.8.4"
  sha256 arm:   "95f4e1dc606e79c653285368392ffe4b0eff9eda12bfd3e02f6a8b575fa99352",
         intel: "ae51079aaeefab7d7f294f10e046c4c192decd651e5817ac79a847a3f852803a"

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
