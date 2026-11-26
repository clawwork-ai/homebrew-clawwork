cask "clawwork" do
  arch arm: "arm64", intel: "x64"

  version "0.0.18"
  sha256 arm:   "c711f2a78ac56f65afa11400dd7cfcda1b4b0b36c542b0d1269b8a3350de7e29",
         intel: "e6bee1794a781f6b2f9beb68a43701289e0955f1a9dedb6af4aae0726c073c3c"

  url "https://github.com/clawwork-ai/ClawWork/releases/download/v#{version}/ClawWork-#{version}-mac-#{arch}.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/ClawWork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
