cask "clawwork" do
  version "0.0.10"
  sha256 "e43bfd6ab60edec60be38bfb908d064384119db86ac4b903b226ebf47e126d0b"

  url "https://github.com/clawwork-ai/ClawWork/releases/download/v0.0.10/ClawWork-0.0.10-mac-universal.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
