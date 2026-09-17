cask "shogunai" do
  version "0.6.1"
  sha256 "44fe9ec88f9fb8e4dcbad404c9b11ec3ef0c5b8803c0e3a12a278ef8a239c5fb"

  # jpackage versiona el .dmg de macOS como "1.<minor>.<patch>" en vez del tag
  # real "0.<minor>.<patch>" (ver design.md de homebrew-cask-distribution).
  dmg_version = "1." + version.split(".", 2).last
  url "https://github.com/LuxionServer/ShogunAi/releases/download/v#{version}/ShogunAi-#{dmg_version}.dmg"
  name "ShogunAi"
  desc "Desktop orchestrator for isolated Git worktrees with automatic secrets provisioning"
  homepage "https://github.com/LuxionServer/ShogunAi"

  auto_updates false

  app "ShogunAi.app"

  caveats <<~EOS
    ShogunAi is not notarized by Apple. If macOS blocks it on first launch
    ("cannot verify developer"), right-click the app and choose Open, or run:
      xattr -dr com.apple.quarantine "/Applications/ShogunAi.app"
  EOS
end
