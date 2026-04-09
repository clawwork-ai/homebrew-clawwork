cask "clawwork" do
  arch arm: "arm64", intel: "x64"

  version "0.0.14"
  sha256 arm:   "e1c34c0132dc909aa84798202b6b796851fc2e799ece7ec48d6e12c8ad4e0d34",
         intel: "53864d031dc45145b5e70e1e8e66e8a902f24610763a4382ce4c7160aa93eb47"

  url "https://github.com/clawwork-ai/clawwork/releases/download/v#{version}/ClawWork-#{version}-mac-#{arch}.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
