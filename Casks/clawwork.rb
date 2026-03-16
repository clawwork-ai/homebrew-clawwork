cask "clawwork" do
  version "0.0.6"
  sha256 "7eb3b9c230efbe8a89283fd7a299dacca5ba58fdb55ce6b62cd7540c4c881ab8"

  url "https://github.com/clawwork-ai/ClawWork/releases/download/v0.0.6/ClawWork-0.0.6-mac-universal.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
