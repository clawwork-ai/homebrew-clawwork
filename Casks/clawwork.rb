cask "clawwork" do
  version "0.0.4"
  sha256 "40d9ae67e28e1795d974ed7bdd8e368c7a3475d990b8e2420c25a84e3f2ab674"

  url "https://github.com/clawwork-ai/clawwork/releases/download/v0.0.4/ClawWork-0.0.4-mac-universal.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
