cask "clawwork" do
  version "0.0.2"
  sha256 "2d475be6d8c69b4d6d96c5fa4acda6096d37f4653a74e91b62625c48d27c0dad"

  url "https://github.com/clawwork-ai/clawwork/releases/download/v0.0.2/ClawWork-0.1.0-mac-universal.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
