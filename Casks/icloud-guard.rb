cask "icloud-guard" do
  version "0.5.3"
  sha256 "4e623bb7b7c6cfcebb3277d8741d5d701afa5118a031dc721d59dd7046459ee8"

  url "https://github.com/rexbrahh/icloud-guard/releases/download/tip-fa02a9b2b26d/ICloudGuard-tip-#{version}-fa02a9b2b26d.zip"
  name "iCloud Guard"
  desc "Menu bar utility for keeping iCloud Drive local storage under control"
  homepage "https://github.com/rexbrahh/icloud-guard"

  depends_on macos: :sequoia

  app "ICloudGuard.app"

  zap trash: "~/.icloud-guard"
end
