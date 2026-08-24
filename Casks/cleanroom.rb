cask "cleanroom" do
  version "3.2.7,18"
  sha256 "ee6a00ede89e50e83ff0d899d8261fd1a7baea76a3df5dd4cbdb318db8075cac"

  url "https://github.com/rexbrahh/cleanroom/releases/download/v#{version.csv.first}/Cleanroom.zip"
  name "Cleanroom"
  desc "Restore desktop and input state around competitive Roblox sessions"
  homepage "https://github.com/rexbrahh/cleanroom"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Cleanroom.app"
  binary "#{appdir}/Cleanroom.app/Contents/Resources/cleanroomctl"

  zap trash: [
    "~/Library/Application Support/Cleanroom",
    "~/Library/Preferences/com.rex.cleanroom.plist",
  ]
end
