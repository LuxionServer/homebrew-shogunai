cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "3e053a8c3e376a23809c6e7d503f2bef0d9cb69c27b15566f80c621d219fd9f1",
         intel: "7269d67b925f9315ff1a888fd5ff58ec43283ccfe3b965479cbcbef903c1e6b5"

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
