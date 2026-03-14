cask "clawwork" do
  version "0.0.3"
  sha256 "029fabdf3a5a8c550cb68818af4b18ef9903159c4e32dbfb922827ece55b7970"

  url "https://github.com/clawwork-ai/clawwork/releases/download/v0.0.3/ClawWork-0.0.3-mac-universal.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
