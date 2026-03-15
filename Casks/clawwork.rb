cask "clawwork" do
  version "0.0.4"
  sha256 "1d1c2a60a5ea5c49d12f26c25743e36062cc02ba880bd2047273bf15e7ca8590"

  url "https://github.com/clawwork-ai/clawwork/releases/download/v0.0.4/ClawWork-0.0.4-mac-universal.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
