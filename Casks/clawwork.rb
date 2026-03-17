cask "clawwork" do
  version "0.0.7"
  sha256 "2e03a1bc6d8d7f2aee13338643893f8d51d21e9aad7c10ff423d13adb4da5428"

  url "https://github.com/clawwork-ai/ClawWork/releases/download/v0.0.7/ClawWork-0.0.7-mac-universal.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
