cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "7273388c8b1f14a242cd3843f70f68b88591569d45aa1c55b1b5a175b42a6352",
         intel: "d0775665abb461f29a44bc54c8e4b7b09325555db9fc2fc35defdc4db6fa013c"

  url "https://github.com/LuxionServer/ShogunAi/releases/download/v#{version}/ShogunAi-#{version}-#{arch}.dmg"
  name "ShogunAi"
  desc "Worktree layer for AI agents: provision, inspect and clean Git worktrees"
  homepage "https://github.com/LuxionServer/ShogunAi"

  auto_updates false

  app "ShogunAi.app"
  binary "#{appdir}/ShogunAi.app/Contents/MacOS/ShogunAi", target: "shogun"
end
