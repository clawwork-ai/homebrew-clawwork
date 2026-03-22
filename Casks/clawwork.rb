cask "clawwork" do
  version "0.0.9"
  sha256 "7fac4ad502e8f48bcfedaa4a2b27d46f7cca5ef586d5e4ab88d3ebf71edfcf21"

  url "https://github.com/clawwork-ai/ClawWork/releases/download/v0.0.9/ClawWork-0.0.9-mac-universal.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
