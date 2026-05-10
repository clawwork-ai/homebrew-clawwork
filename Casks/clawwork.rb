cask "clawwork" do
  arch arm: "arm64", intel: "x64"

  version "0.0.15"
  sha256 arm:   "ce510d0469363f0157b706d0bf183bf49cff31253764bdf0ac9bf225d039d909",
         intel: "8fe67f9490382ab42643c4592be78d4557a29df1cee9e10f284f199cfdf7d311"

  url "https://github.com/clawwork-ai/clawwork/releases/download/v#{version}/ClawWork-#{version}-mac-#{arch}.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
