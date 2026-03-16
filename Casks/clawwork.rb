cask "clawwork" do
  version "0.0.5"
  sha256 "2500a6664a81de92c4a78fb7764bf8af96c47e46c9d78f0c0be66ef878e6e7b7"

  url "https://github.com/clawwork-ai/clawwork/releases/download/v0.0.5/ClawWork-0.0.5-mac-universal.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
