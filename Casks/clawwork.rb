cask "clawwork" do
  version "0.0.4"
  sha256 "df0fbf26cc28671fca56a70f4350ce1e38740b9b31642d1a6e4a45fac4f40e12"

  url "https://github.com/clawwork-ai/clawwork/releases/download/v0.0.4/ClawWork-0.0.4-mac-universal.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
