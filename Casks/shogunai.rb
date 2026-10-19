cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.8.1"
  sha256 arm:   "292579be14c51b604cb2bca2063b73e2cd78def66baa9242203f0a411aa13904",
         intel: "2686b537fd80e67730468a1f04f95c0b455142ff2c8b1fa6329d2e36a34820df"

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
