cask "clawwork" do
  version "0.0.8"
  sha256 "78a6bed14cd669443ad75ece91bb09cf8154f7690a1449bc0748bf8b63527f6a"

  url "https://github.com/clawwork-ai/ClawWork/releases/download/v0.0.8/ClawWork-0.0.8-mac-universal.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
