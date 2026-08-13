cask "icloud-guard" do
  version "0.5.0"
  sha256 "c798d867ede092b08e8caa5e14a6e107b118f841ea75b52a5f335461d72958ab"

  url "https://github.com/rexbrahh/icloud-guard/releases/download/tip-99a37a551010/ICloudGuard-tip-#{version}-99a37a551010.zip"
  name "iCloud Guard"
  desc "Menu bar utility for keeping iCloud Drive local storage under control"
  homepage "https://github.com/rexbrahh/icloud-guard"

  depends_on macos: :sequoia

  app "ICloudGuard.app"

  zap trash: "~/.icloud-guard"
end
