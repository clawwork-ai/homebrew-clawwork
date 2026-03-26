cask "clawwork" do
  arch arm: "arm64", intel: "x64"

  version "0.0.12"
  sha256 arm:   "15dcad3ac5a488e9b40b40d31433f24f9d07ae76c9e6575dde03e9b21ba10b83",
         intel: "9ca4439cad8d5781628e8dc9d37109066723b594577af1acb1618888e1b1fbfb"

  url "https://github.com/clawwork-ai/clawwork/releases/download/v#{version}/ClawWork-#{version}-mac-#{arch}.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
