cask "clawwork" do
  version "0.0.11"
  sha256 "5249e4a30f9d173b2262e0cbc372ef3f5556c48e5c57c371749545b2d2320d09"

  url "https://github.com/clawwork-ai/ClawWork/releases/download/v0.0.11/ClawWork-0.0.11-mac-universal.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
