cask "clawwork" do
  arch arm: "arm64", intel: "x64"

  version "0.0.13"
  sha256 arm:   "b81c93cac53af4c3d0cddbfff0169a3f3db644fd0b7ff9ab02163b832649105a",
         intel: "7965930489770a761770c6c5fbf02ff0f105e919d79a91bbfe6c5fbefe53d7bf"

  url "https://github.com/clawwork-ai/clawwork/releases/download/v#{version}/ClawWork-#{version}-mac-#{arch}.dmg"
  name "ClawWork"
  desc "Desktop client for OpenClaw"
  homepage "https://github.com/clawwork-ai/clawwork"

  app "ClawWork.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/ClawWork.app"]
  end
end
