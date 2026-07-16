cask "shogunai" do
  version "0.2.2"
  sha256 "f13a9bdfa66c977371b7b3cbfb4ff21d3a77d8f7f0ccc70971993ec9a9ca97ac"

  url "https://github.com/LuxionServer/ShogunAi/releases/download/v0.2.2/app.luxion.shogunai-1.2.2.dmg"
  name "ShogunAi"
  desc "Desktop orchestrator for isolated Git worktrees with automatic secrets provisioning"
  homepage "https://github.com/LuxionServer/ShogunAi"

  auto_updates false

  app "app.luxion.shogunai.app", target: "ShogunAi.app"

  caveats <<~EOS
    ShogunAi is not notarized by Apple. If macOS blocks it on first launch
    ("cannot verify developer"), right-click the app and choose Open, or run:
      xattr -dr com.apple.quarantine "/Applications/ShogunAi.app"
  EOS
end
