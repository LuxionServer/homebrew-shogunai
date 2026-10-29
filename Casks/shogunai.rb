cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "2517a0a38f35a956edb790eba231fcfd6a79cb1f8f9f690154894339b981d149",
         intel: "34659fd8b8e3c168b6da49a96b9c9e716e0281af0d48a8b338a1a7e4979348c4"

  url "https://github.com/LuxionServer/ShogunAi/releases/download/v#{version}/ShogunAi-#{version}-#{arch}.dmg"
  name "ShogunAi"
  desc "Worktree layer for AI agents: provision, inspect and clean Git worktrees"
  homepage "https://github.com/LuxionServer/ShogunAi"

  auto_updates false

  app "ShogunAi.app"
  binary "#{appdir}/ShogunAi.app/Contents/MacOS/ShogunAi", target: "shogun"
end
