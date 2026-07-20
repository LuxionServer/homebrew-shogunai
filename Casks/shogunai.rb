cask "shogunai" do
  version "0.4.0"
  sha256 "3403abfbc5f6534d20cfb73ab77156ac223768f808ced18b23077f962ed01e93"

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
