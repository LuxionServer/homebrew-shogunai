cask "shogunai" do
  arch arm: "arm64", intel: "x64"

  version "0.8.9"
  sha256 arm:   "d9fefd24d1dc8b0b1fd2032d6a24c2093bb32b3f954a823dd448502ba8d6d7fd",
         intel: "c70df8b7691169fcd8cc59487a715442dde19b62826c670c99dcfef5ea7962dc"

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
