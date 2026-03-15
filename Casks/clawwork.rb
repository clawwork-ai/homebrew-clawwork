cask "clawwork" do
  version "0.0.5"
  sha256 "19fe17b0650f80be5b5e561c4a4adb1ee04704a2e79c1dc4fc5b230dd5ba1b9c"

  url "https://github.com/clawwork-ai/clawwork/releases/download/v0.0.5/ClawWork-0.0.5-mac-universal.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
