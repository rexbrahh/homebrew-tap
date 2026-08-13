cask "icloud-guard" do
  version "0.5.1"
  sha256 "9b4413bfcb663fa9985d0d1dc63dd9ed58461fc77b56e61a6e1c35ef4c7c8bf0"

  url "https://github.com/rexbrahh/icloud-guard/releases/download/tip-84e8c141f462/ICloudGuard-tip-#{version}-84e8c141f462.zip"
  name "iCloud Guard"
  desc "Menu bar utility for keeping iCloud Drive local storage under control"
  homepage "https://github.com/rexbrahh/icloud-guard"

  depends_on macos: :sequoia

  app "ICloudGuard.app"

  zap trash: "~/.icloud-guard"
end
