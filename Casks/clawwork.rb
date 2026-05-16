cask "clawwork" do
  arch arm: "arm64", intel: "x64"

  version "0.0.16"
  sha256 arm:   "273c63fed60b9a72e4fa766da0a25ed6a111fbf5ce8a35c17e8b6fc6154c8d08",
         intel: "c662211eb0c2262aefc5cf550dce4243ddd9ff1245d7697bc6f7cb713f7c7691"

  url "https://github.com/clawwork-ai/clawwork/releases/download/v#{version}/ClawWork-#{version}-mac-#{arch}.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
