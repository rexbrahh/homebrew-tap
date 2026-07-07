cask "icloud-guard" do
  version "0.4.4"
  sha256 "4c499feaf68d325568624852ee1a33aa14fc52a309d198f4b3bad7fcb9b2816b"

  url "https://github.com/rexbrahh/icloud-guard/releases/download/beta-#{version}/ICloudGuard-beta-#{version}.zip"
  name "iCloud Guard"
  desc "Menu bar utility for keeping iCloud Drive local storage under control"
  homepage "https://github.com/rexbrahh/icloud-guard"

  app "ICloudGuard.app"

  zap trash: "~/.icloud-guard"
end

