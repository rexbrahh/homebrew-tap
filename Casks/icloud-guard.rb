cask "icloud-guard" do
  version "0.5.2"
  sha256 "affaef6ec6a82d6113469f3528b71b5657bea5abdee64006a73d28765f9f09de"

  url "https://github.com/rexbrahh/icloud-guard/releases/download/tip-405b4f19cd5c/ICloudGuard-tip-#{version}-405b4f19cd5c.zip"
  name "iCloud Guard"
  desc "Menu bar utility for keeping iCloud Drive local storage under control"
  homepage "https://github.com/rexbrahh/icloud-guard"

  depends_on macos: :sequoia

  app "ICloudGuard.app"

  zap trash: "~/.icloud-guard"
end
