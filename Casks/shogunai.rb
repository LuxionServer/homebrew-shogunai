cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "6e9fef76c6efd942513528b3ccc3e2db38deedf3dd5ff4f1255220fd6e2a5a19",
         intel: "221bdacefdd2d1597b3823523f900b3fd367cd04b66cc84f6d5d4c05dae4ac6d"

  dmg_version = "1." + version.split(".", 2).last
  url "https://github.com/LuxionServer/ShogunAi/releases/download/v#{version}/ShogunAi-#{dmg_version}-#{arch}.dmg"
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
